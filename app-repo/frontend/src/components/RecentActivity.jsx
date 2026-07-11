import styles from "./RecentActivity.module.css";

const data = [
"Setup Monitoring completed",
"Deployment #104 successful",
"Frontend pipeline running",
"New Grafana alert created"
];

export default function RecentActivity(){

return(

<div className={styles.card}>

<h2>Recent Activity</h2>

{data.map((item)=>(

<div className={styles.item} key={item}>

{item}

</div>

))}

</div>

);

}
