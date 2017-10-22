.class public Lorg/videolan/libvlc/Dialog$LoginDialog;
.super Lorg/videolan/libvlc/Dialog$IdDialog;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginDialog"
.end annotation


# instance fields
.field private final mAskStore:Z

.field private final mDefaultUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "defaultUsername"    # Ljava/lang/String;
    .param p6, "askStore"    # Z

    .prologue
    .line 217
    const/4 v4, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/videolan/libvlc/Dialog$IdDialog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-object p5, p0, Lorg/videolan/libvlc/Dialog$LoginDialog;->mDefaultUsername:Ljava/lang/String;

    .line 219
    iput-boolean p6, p0, Lorg/videolan/libvlc/Dialog$LoginDialog;->mAskStore:Z

    .line 220
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/videolan/libvlc/Dialog$LoginDialog;)V
    .locals 1

    .prologue
    .line 216
    invoke-direct/range {p0 .. p6}, Lorg/videolan/libvlc/Dialog$LoginDialog;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private native nativePostLogin(JLjava/lang/String;Ljava/lang/String;Z)V
.end method


# virtual methods
.method public asksStore()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/videolan/libvlc/Dialog$LoginDialog;->mAskStore:Z

    return v0
.end method

.method public bridge synthetic dismiss()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/Dialog$IdDialog;->dismiss()V

    return-void
.end method

.method public getDefaultUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$LoginDialog;->mDefaultUsername:Ljava/lang/String;

    return-object v0
.end method

.method public postLogin(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "store"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 249
    iget-wide v0, p0, Lorg/videolan/libvlc/Dialog$LoginDialog;->mId:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 250
    iget-wide v2, p0, Lorg/videolan/libvlc/Dialog$LoginDialog;->mId:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/videolan/libvlc/Dialog$LoginDialog;->nativePostLogin(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 251
    iput-wide v8, p0, Lorg/videolan/libvlc/Dialog$LoginDialog;->mId:J

    .line 253
    :cond_0
    return-void
.end method
