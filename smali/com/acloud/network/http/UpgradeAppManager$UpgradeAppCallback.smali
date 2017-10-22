.class public interface abstract Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;
.super Ljava/lang/Object;
.source "UpgradeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/UpgradeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpgradeAppCallback"
.end annotation


# virtual methods
.method public abstract onDownloadFinish(Ljava/lang/String;)V
.end method

.method public abstract onDownloadProgress(I)V
.end method
