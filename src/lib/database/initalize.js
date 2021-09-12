import { Sequelize} from 'sequelize';
import {DATABASE_HOST, DATABASE_USERNAME, DATABASE_USERNAME, DATATBASE_NAME} from "../env";

export const connectToDatabase = ()=>{
    const sequelize = new Sequelize(DATATBASE_NAME, DATABASE_USERNAME, DATABASE_USERNAME, {
        host: DATABASE_HOST,
        dialect: 'mysql'
    });

    return sequelize;
}
        