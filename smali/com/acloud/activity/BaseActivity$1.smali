.class Lcom/acloud/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/acloud/AndroidTimer$TimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/acloud/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/activity/BaseActivity$1;->this$0:Lcom/acloud/activity/BaseActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity$1;->this$0:Lcom/acloud/activity/BaseActivity;

    # getter for: Lcom/acloud/activity/BaseActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;
    invoke-static {v0}, Lcom/acloud/activity/BaseActivity;->access$0(Lcom/acloud/activity/BaseActivity;)Lcom/acloud/AndroidTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 85
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity$1;->this$0:Lcom/acloud/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/acloud/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "popup_volume_bar"

    iget-object v0, p0, Lcom/acloud/activity/BaseActivity$1;->this$0:Lcom/acloud/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/acloud/activity/BaseActivity;->isShowVolumeBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
