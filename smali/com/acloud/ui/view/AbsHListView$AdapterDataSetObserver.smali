.class public Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;
.super Lcom/acloud/ui/view/AdapterView$AdapterDataSetObserver;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/ui/view/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method public constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 0

    .prologue
    .line 5359
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AdapterView$AdapterDataSetObserver;-><init>(Lcom/acloud/ui/view/AdapterView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearSavedState()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    return-void
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 5366
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 5367
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 5374
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 5375
    return-void
.end method
