.class Lcom/acloud/fragment/BaseFragmentActivity$2;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/fragment/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/fragment/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/acloud/fragment/BaseFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/fragment/BaseFragmentActivity$2;->this$0:Lcom/acloud/fragment/BaseFragmentActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity$2;->this$0:Lcom/acloud/fragment/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/acloud/fragment/BaseFragmentActivity;->onInitData()V

    .line 90
    return-void
.end method
