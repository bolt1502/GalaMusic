.class public Lcom/acloud/uibase/GalaProgressDialog;
.super Landroid/app/ProgressDialog;
.source "GalaProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/GalaProgressDialog;->setProgressStyle(I)V

    .line 12
    return-void
.end method
