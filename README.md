# ssh-command-dispatcher

This container image is to execute command on remote host by ssh.  
In example, trigger script on remote host when build completely.  

## Usage On Cloud Build

Add following step on `cloudbuild.yaml`

```yaml
steps:
  - name: 'tkuni83/ssh-command-dispatcher:1.0.0'
    args: ['echo', 'this command is executed on remote host.']
    env:
      - USER=${_USER}
      - HOST=${_HOST}
      - PRIVATE_KEY=${_PRIVATE_KEY}
```

Add variables on trigger edit page in cloud build.

![readme-img1.png](https://github.com/t-kuni/ssh-command-dispatcher/blob/master/readme-img1.png)

**Note**: value of `PRIVATE_KEY` is need to replace LF to `\n` because variables of cloud build is can't include LF.   

## Development

### Clone

```
git clone ssh://git@github.com/t-kuni/ssh-command-dispatcher
cd ssh-command-dispatcher
```

### Build

```
docker-compose build
```

### Setup Environment Variable

```
cp .env.example .env
vi .env
```

### Run

```
docker-compose run app
```