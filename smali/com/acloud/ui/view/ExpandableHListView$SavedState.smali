.class Lcom/acloud/ui/view/ExpandableHListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ExpandableHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/ExpandableHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/acloud/ui/view/ExpandableHListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1129
    new-instance v0, Lcom/acloud/ui/view/ExpandableHListView$SavedState$1;

    invoke-direct {v0}, Lcom/acloud/ui/view/ExpandableHListView$SavedState$1;-><init>()V

    sput-object v0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1137
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1118
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1120
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    const-class v1, Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1121
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/acloud/ui/view/ExpandableHListView$SavedState;)V
    .locals 0

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/ExpandableHListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1110
    .local p2, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1111
    iput-object p2, p0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1112
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1125
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1126
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1127
    return-void
.end method
