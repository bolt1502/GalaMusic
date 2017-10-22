.class Lcom/acloud/adapter/GalaBaseAdapter$2;
.super Ljava/lang/Object;
.source "GalaBaseAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    iput-object p1, p0, Lcom/acloud/adapter/GalaBaseAdapter$2;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$2;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    invoke-static {v0, p2}, Lcom/acloud/adapter/GalaBaseAdapter;->access$2(Lcom/acloud/adapter/GalaBaseAdapter;I)V

    .line 255
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$2;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    invoke-static {v0, p3}, Lcom/acloud/adapter/GalaBaseAdapter;->access$3(Lcom/acloud/adapter/GalaBaseAdapter;I)V

    .line 256
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$2;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/acloud/adapter/GalaBaseAdapter;->access$0(Lcom/acloud/adapter/GalaBaseAdapter;Z)V

    .line 244
    packed-switch p2, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$2;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    # invokes: Lcom/acloud/adapter/GalaBaseAdapter;->onScrollStop()V
    invoke-static {v0}, Lcom/acloud/adapter/GalaBaseAdapter;->access$1(Lcom/acloud/adapter/GalaBaseAdapter;)V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
