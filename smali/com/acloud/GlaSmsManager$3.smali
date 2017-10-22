.class Lcom/acloud/GlaSmsManager$3;
.super Landroid/content/BroadcastReceiver;
.source "GlaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/GlaSmsManager;->getDeliveryIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/GlaSmsManager;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/acloud/GlaSmsManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/GlaSmsManager$3;->this$0:Lcom/acloud/GlaSmsManager;

    iput-object p2, p0, Lcom/acloud/GlaSmsManager$3;->val$context:Landroid/content/Context;

    .line 279
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/acloud/GlaSmsManager$3;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v0}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/acloud/GlaSmsManager$3;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v0}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/GlaSmsManager$SmsCallback;->onSmsSuccess()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/acloud/GlaSmsManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    return-void
.end method
