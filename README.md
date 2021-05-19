# README

Name：
HaNe-TuKi
====

Overview


## 概要
<ul>
  <li>画像保管アプリ</li>
</ul>

## 制作意図
・アプリ内で美術館を実現してみたいと思ったから


## 工夫したところ
<ul>
  <li>デザイン思索中</li>
</ul>

## 開発環境
・Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/

## 今後実装したい機能
<ul>
  <li>デザイン</li>
</ul>


## デモ動画
・準備中


## デモ画像①
・準備中

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|comment_id|integer|
|name|string|
|age|string|
|text|string|
### Association
- belongs_to :user

## Licence
Copyright YOU ARE 2020.
