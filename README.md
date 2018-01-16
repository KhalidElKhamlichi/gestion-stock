## Setup

1- Download wildfly 11.0.0.Final : http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.zip

2- Copy ressources\mysql folder to wildfly-11.0.0.Final\modules\system\layers\base\com

3- Copy ressources\standalone.xml to wildfly-11.0.0.Final\standalone\configuration

4- Download hibernate 5.2.12 (http://sourceforge.net/projects/hibernate/files/hibernate-orm/5.2.12.Final/hibernate-release-5.2.12.Final.zip/download), copy the content of the lib folder to wildfly-11.0.0.Final\modules\system\layers\base\org\hibernate\5.0 

5- Add wildfly11 to eclipse : https://www.youtube.com/watch?v=atr15yiyR3o

6- Import the databases from ressources\db