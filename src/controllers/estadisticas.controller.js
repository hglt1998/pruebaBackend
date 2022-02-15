import { connect } from "../database";

export const getCompositores = async (req, res) => {
    const connection = await connect();
    const [rows] = await connection.execute("SELECT * FROM compositores");
}