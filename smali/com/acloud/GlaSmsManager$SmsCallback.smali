.class public interface abstract Lcom/acloud/GlaSmsManager$SmsCallback;
.super Ljava/lang/Object;
.source "GlaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/GlaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmsCallback"
.end annotation


# virtual methods
.method public abstract onSmsContent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSmsFailure()V
.end method

.method public abstract onSmsSuccess()V
.end method
