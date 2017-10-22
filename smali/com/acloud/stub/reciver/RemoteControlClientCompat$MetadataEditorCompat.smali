.class public Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/reciver/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditorCompat"
.end annotation


# static fields
.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field private mActualMetadataEditor:Ljava/lang/Object;

.field private mApplyMethod:Ljava/lang/reflect/Method;

.field private mClearMethod:Ljava/lang/reflect/Method;

.field private mPutBitmapMethod:Ljava/lang/reflect/Method;

.field private mPutLongMethod:Ljava/lang/reflect/Method;

.field private mPutStringMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/acloud/stub/reciver/RemoteControlClientCompat;


# direct methods
.method private constructor <init>(Lcom/acloud/stub/reciver/RemoteControlClientCompat;Ljava/lang/Object;)V
    .locals 6
    .param p2, "actualMetadataEditor"    # Ljava/lang/Object;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->this$0:Lcom/acloud/stub/reciver/RemoteControlClientCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    # getter for: Lcom/acloud/stub/reciver/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    invoke-static {}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->access$0()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Remote Control API\'s exist, should not be given a null MetadataEditor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    # getter for: Lcom/acloud/stub/reciver/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    invoke-static {}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->access$0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 158
    .local v1, "metadataEditorClass":Ljava/lang/Class;
    :try_start_0
    const-string v2, "putString"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 159
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    .line 160
    const-string v2, "putBitmap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 161
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    .line 160
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    .line 162
    const-string v2, "putLong"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 163
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 162
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    .line 164
    const-string v2, "clear"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mClearMethod:Ljava/lang/reflect/Method;

    .line 165
    const-string v2, "apply"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "metadataEditorClass":Ljava/lang/Class;
    :cond_1
    iput-object p2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    .line 171
    return-void

    .line 166
    .restart local v1    # "metadataEditorClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method synthetic constructor <init>(Lcom/acloud/stub/reciver/RemoteControlClientCompat;Ljava/lang/Object;Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/acloud/stub/reciver/RemoteControlClientCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 4

    .prologue
    .line 273
    # getter for: Lcom/acloud/stub/reciver/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    invoke-static {}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 257
    # getter for: Lcom/acloud/stub/reciver/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    invoke-static {}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mClearMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putBitmap(ILandroid/graphics/Bitmap;)Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 6
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 216
    # getter for: Lcom/acloud/stub/reciver/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    invoke-static {}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    return-object p0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putLong(IJ)Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 242
    # getter for: Lcom/acloud/stub/reciver/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    invoke-static {}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    return-object p0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putString(ILjava/lang/String;)Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    # getter for: Lcom/acloud/stub/reciver/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    invoke-static {}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/acloud/stub/reciver/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    return-object p0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
