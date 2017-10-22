.class public Lcom/acloud/GalaApplication;
.super Landroid/app/Application;
.source "GalaApplication.java"


# static fields
.field private static mContext:Lcom/acloud/GalaApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/acloud/GalaApplication;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/acloud/GalaApplication;

    return-object v0
.end method

.method public static getApplication()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/acloud/GalaApplication;->mContext:Lcom/acloud/GalaApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 33
    sput-object p0, Lcom/acloud/GalaApplication;->mContext:Lcom/acloud/GalaApplication;

    .line 34
    return-void
.end method
