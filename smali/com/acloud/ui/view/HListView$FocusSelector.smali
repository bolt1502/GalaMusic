.class Lcom/acloud/ui/view/HListView$FocusSelector;
.super Ljava/lang/Object;
.source "HListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/HListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionLeft:I

.field final synthetic this$0:Lcom/acloud/ui/view/HListView;


# direct methods
.method private constructor <init>(Lcom/acloud/ui/view/HListView;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/acloud/ui/view/HListView$FocusSelector;->this$0:Lcom/acloud/ui/view/HListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/ui/view/HListView;Lcom/acloud/ui/view/HListView$FocusSelector;)V
    .locals 0

    .prologue
    .line 1079
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/HListView$FocusSelector;-><init>(Lcom/acloud/ui/view/HListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/acloud/ui/view/HListView$FocusSelector;->this$0:Lcom/acloud/ui/view/HListView;

    iget v1, p0, Lcom/acloud/ui/view/HListView$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/acloud/ui/view/HListView$FocusSelector;->mPositionLeft:I

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/HListView;->setSelectionFromLeft(II)V

    .line 1093
    return-void
.end method

.method public setup(II)Lcom/acloud/ui/view/HListView$FocusSelector;
    .locals 0
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 1085
    iput p1, p0, Lcom/acloud/ui/view/HListView$FocusSelector;->mPosition:I

    .line 1086
    iput p2, p0, Lcom/acloud/ui/view/HListView$FocusSelector;->mPositionLeft:I

    .line 1087
    return-object p0
.end method
