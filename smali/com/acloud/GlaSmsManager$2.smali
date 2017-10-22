.class Lcom/acloud/GlaSmsManager$2;
.super Landroid/content/BroadcastReceiver;
.source "GlaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/GlaSmsManager;->getSentIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/GlaSmsManager;


# direct methods
.method constructor <init>(Lcom/acloud/GlaSmsManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/GlaSmsManager$2;->this$0:Lcom/acloud/GlaSmsManager;

    .line 250
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/acloud/GlaSmsManager$2;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/acloud/GlaSmsManager$2;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v0}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/acloud/GlaSmsManager$2;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v0}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/GlaSmsManager$SmsCallback;->onSmsSuccess()V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/acloud/GlaSmsManager$2;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v0}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/acloud/GlaSmsManager$2;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v0}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/GlaSmsManager$SmsCallback;->onSmsFailure()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
