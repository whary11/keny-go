package models

import (
	"database/sql"
	"fmt"
	"keny-go/utils"
	"time"

	_ "github.com/go-sql-driver/mysql"

	"github.com/mitchellh/mapstructure"
	"github.com/spf13/viper"
)

// Host databases to work
var (
	dbBoilerplateGo database
	// dbOtherDB       Database
)

type infoDatabase struct {
	Read struct {
		Hostname  string
		Name      string
		Username  string
		Password  string
		Port      string
		Parameter string
	}
	Write struct {
		Hostname  string
		Name      string
		Username  string
		Password  string
		Port      string
		Parameter string
	}
}

// Nodes read and write in database
type database struct {
	Read  *sql.DB
	Write *sql.DB
}

func init() {
	var infoDB infoDatabase
	viper.SetConfigFile("config.json")
	_ = viper.ReadInConfig()

	_ = mapstructure.Decode(viper.GetStringMap("Databases.MySQL.BoilerplateGo"), &infoDB)
	_ = dbBoilerplateGo.upConnectionMysql(&infoDB)

	// _ = mapstructure.Decode(viper.GetStringMap("Databases.MySQL.OtherDB"), &infoDB)
	// _ = dbOtherDB.upConnectionMysql(&infoDB)

	// If you need another database host, use this code HERE:
}

// Up new mysql database connection
func (db *database) upConnectionMysql(info *infoDatabase) (err error) {

	var username = utils.GetEnv("DB_USERNAME", "")

	var password = utils.GetEnv("DB_PASSWORD", "")
	var hostname = utils.GetEnv("DB_HOST_READ", "")
	var port = utils.GetEnv("DB_PORT", "")
	var database = utils.GetEnv("DB_DATABASE", "")

	driverRead := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", username, password, hostname, port, database)
	db.Read, err = sql.Open("mysql", driverRead)
	db.Read.SetConnMaxLifetime(time.Second * 10)
	if err != nil {
		return
	}

	hostname = utils.GetEnv("DB_HOST", "")

	driverWrite := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", username, password, hostname, port, database)
	db.Write, err = sql.Open("mysql", driverWrite)
	db.Write.SetConnMaxLifetime(time.Second * 10)

	return
}
