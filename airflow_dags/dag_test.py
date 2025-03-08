from datetime import datetime
from airflow import DAG
from airflow.operators.empty import EmptyOperator

# Definição dos argumentos padrão da DAG
default_args = {
    'owner': 'Kraken Stack',
    'description': 'Uma DAG de teste usando DummyOperator',
    'depends_on_past': False,
    'start_date': datetime(2025, 1, 1),
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 0,
}

# Criando a DAG
with DAG(
    'dag_test',
    default_args=default_args,
    description='Uma DAG de teste usando DummyOperator',
    schedule_interval=None,
    catchup=False,
) as dag:

    task_start = EmptyOperator(
        task_id='task_start'
    )

    task_dummy = EmptyOperator(
        task_id='task_dummy',
    )

    task_end = EmptyOperator(
        task_id='task_end'
    )    

    task_start >> task_dummy >> task_end
