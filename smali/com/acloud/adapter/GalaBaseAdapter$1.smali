.class Lcom/acloud/adapter/GalaBaseAdapter$1;
.super Ljava/lang/Object;
.source "GalaBaseAdapter.java"

# interfaces
.implements Lcom/acloud/ui/view/AbsHListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/adapter/GalaBaseAdapter;->setListView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/adapter/GalaBaseAdapter;


# direct methods
.method constructor <init>(Lcom/acloud/adapter/GalaBaseAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/adapter/GalaBaseAdapter$1;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/acloud/ui/view/AbsHListView;III)V
    .locals 1
    .param p1, "view"    # Lcom/acloud/ui/view/AbsHListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$1;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    invoke-static {v0, p2}, Lcom/acloud/adapter/GalaBaseAdapter;->access$2(Lcom/acloud/adapter/GalaBaseAdapter;I)V

    .line 233
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$1;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    invoke-static {v0, p3}, Lcom/acloud/adapter/GalaBaseAdapter;->access$3(Lcom/acloud/adapter/GalaBaseAdapter;I)V

    .line 234
    return-void
.end method

.method public onScrollStateChanged(Lcom/acloud/ui/view/AbsHListView;I)V
    .locals 2
    .param p1, "view"    # Lcom/acloud/ui/view/AbsHListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$1;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/acloud/adapter/GalaBaseAdapter;->access$0(Lcom/acloud/adapter/GalaBaseAdapter;Z)V

    .line 222
    packed-switch p2, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$1;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    # invokes: Lcom/acloud/adapter/GalaBaseAdapter;->onScrollStop()V
    invoke-static {v0}, Lcom/acloud/adapter/GalaBaseAdapter;->access$1(Lcom/acloud/adapter/GalaBaseAdapter;)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
