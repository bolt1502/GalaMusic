.class Lcom/acloud/activity/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/acloud/activity/BaseActivity$2;->this$0:Lcom/acloud/activity/BaseActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity$2;->this$0:Lcom/acloud/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/acloud/activity/BaseActivity;->onInitData()V

    .line 94
    return-void
.end method
