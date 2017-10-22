.class public interface abstract Lcom/acloud/PlayStateControlManager$MountedStateInterface;
.super Ljava/lang/Object;
.source "PlayStateControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/PlayStateControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MountedStateInterface"
.end annotation


# virtual methods
.method public abstract eject(Ljava/lang/String;)V
.end method

.method public abstract mount(Ljava/lang/String;)V
.end method

.method public abstract scanFinish()V
.end method

.method public abstract scanStart()V
.end method
