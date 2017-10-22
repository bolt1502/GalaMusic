.class public interface abstract Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
.super Ljava/lang/Object;
.source "IPlayServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/service/aidl/IPlayServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallback([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract widgetToNative(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
