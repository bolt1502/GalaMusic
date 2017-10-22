.class public interface abstract Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadInfoCallback"
.end annotation


# virtual methods
.method public abstract onCancel(JLjava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onFinish(Ljava/lang/String;)V
.end method

.method public abstract onProgressUpdate(Ljava/lang/String;JJ)V
.end method

.method public abstract onSpeed(JLjava/lang/String;)V
.end method
