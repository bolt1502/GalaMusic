.class public Lcom/acloud/ui/view/ExpandableHListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "ExpandableHListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/ExpandableHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "packedPosition"    # J
    .param p4, "id"    # J

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1076
    iput-wide p2, p0, Lcom/acloud/ui/view/ExpandableHListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1077
    iput-wide p4, p0, Lcom/acloud/ui/view/ExpandableHListView$ExpandableListContextMenuInfo;->id:J

    .line 1078
    return-void
.end method
