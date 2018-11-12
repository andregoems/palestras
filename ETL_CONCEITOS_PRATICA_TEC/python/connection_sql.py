def get_params(filename='database.ini', section='postgres'):
    from configparser import ConfigParser
    # create a parser
    parser = ConfigParser()
    # read config file
    parser.read(filename)
    # get section
    db = {}
    try:
        params = parser.items(section)
        for param in params:
            db[param[0]] = param[1]
    except:
        print('Section {0} not found in the {1} file'.format(section, filename))    
    return db


# Cria a conexão 
def mysql_demo_transformacao(filename='database.ini'):
#  from MySQLdb import connect
    from sqlalchemy import create_engine
    params = get_params(filename=filename , section="mysql_demo_transformacao")
    # conexão padrão
    ##conn = connect(**params)
    user = params.get('user')
    password = params.get('password')
    host = params.get('host')
    database = params.get('database')
    port = params.get('port')
    
    engine = create_engine("mysql+pymysql://"+user+":"+password+"@"+host+"/"+database+"?host="+host+"?port="+port)
    conn = engine.connect()

    return conn
