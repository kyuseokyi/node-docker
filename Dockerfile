#base image 선택.
FROM node:8.1.1

#docker image 관리자.
MAINTAINER kyuseok <justloveher79@gmail.com>

# /app 폴더 생성.
RUN mkdir -p /app

# /app 폴더를 workdir 로 설정.
WORKDIR /app

#dockerfile경로의 모든 파일을 /app 폴더로 복사.
ADD . /app

#npm install을 실행.
RUN npm install

# 환경변수 값설정
ENV NODE_ENV development

#가상 머신에 오픈할 포트
EXPOSE 5000 80

#컨테이너에서 실행될 명령어.
CMD ["npm", "start"]
