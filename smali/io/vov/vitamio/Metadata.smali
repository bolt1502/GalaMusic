.class public Lio/vov/vitamio/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vov/vitamio/Metadata$TimedText;
    }
.end annotation


# static fields
.field public static final ALBUM:I = 0x4

.field public static final ALBUM_ART:I = 0xe

.field public static final ANY:I = 0x0

.field public static final ARTIST:I = 0x5

.field public static final AUDIO_BIT_RATE:I = 0x12

.field public static final AUDIO_CODEC:I = 0x17

.field public static final AUDIO_SAMPLE_RATE:I = 0x14

.field public static final AUTHOR:I = 0x6

.field public static final BIT_RATE:I = 0x11

.field public static final BOOLEAN_VAL:I = 0x3

.field public static final BYTE_ARRAY_VAL:I = 0x8

.field public static final CAPTION:I = 0x10

.field public static final CD_TRACK_MAX:I = 0xc

.field public static final CD_TRACK_NUM:I = 0xb

.field public static final COMMENT:I = 0x2

.field public static final COMPOSER:I = 0x7

.field public static final COPYRIGHT:I = 0x3

.field public static final DATE:I = 0x9

.field public static final DATE_VAL:I = 0x7

.field public static final DOUBLE_VAL:I = 0x5

.field public static final DRM_CRIPPLED:I = 0x1c

.field public static final DURATION:I = 0xa

.field private static final FIRST_CUSTOM:I = 0x2000

.field public static final GENRE:I = 0x8

.field public static final INTEGER_VAL:I = 0x2

.field private static final LAST_SYSTEM:I = 0x20

.field private static final LAST_TYPE:I = 0x8

.field public static final LONG_VAL:I = 0x4

.field public static final MATCH_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_NONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:I = 0x16

.field public static final NUM_TRACKS:I = 0x1b

.field public static final PAUSE_AVAILABLE:I = 0x1d

.field public static final RATING:I = 0xd

.field public static final SEEK_AVAILABLE:I = 0x20

.field public static final SEEK_BACKWARD_AVAILABLE:I = 0x1e

.field public static final SEEK_FORWARD_AVAILABLE:I = 0x1f

.field public static final STRING_VAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "media.Metadata"

.field public static final TIMED_TEXT_VAL:I = 0x6

.field public static final TITLE:I = 0x1

.field public static final VIDEO_BIT_RATE:I = 0x13

.field public static final VIDEO_CODEC:I = 0x18

.field public static final VIDEO_FRAME:I = 0xf

.field public static final VIDEO_FRAME_RATE:I = 0x15

.field public static final VIDEO_HEIGHT:I = 0x19

.field public static final VIDEO_WIDTH:I = 0x1a

.field private static final kInt32Size:I = 0x4

.field private static final kMetaHeaderSize:I = 0x8

.field private static final kMetaMarker:I = 0x4d455441

.field private static final kRecordHeaderSize:I = 0xc


# instance fields
.field private final mKeyToPosMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/vov/vitamio/Metadata;->MATCH_NONE:Ljava/util/Set;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/vov/vitamio/Metadata;->MATCH_ALL:Ljava/util/Set;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    .line 125
    return-void
.end method

.method private checkMetadataId(I)Z
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 347
    if-lez p1, :cond_0

    const/16 v0, 0x20

    if-ge v0, p1, :cond_1

    const/16 v0, 0x2000

    if-ge p1, v0, :cond_1

    .line 348
    :cond_0
    const-string v0, "media.Metadata"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid metadata ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkType(II)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "expectedType"    # I

    .prologue
    .line 355
    iget-object v2, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 357
    .local v0, "pos":I
    iget-object v2, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 359
    iget-object v2, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "type":I
    if-eq v1, p2, :cond_0

    .line 361
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_0
    return-void
.end method

.method public static firstCustomId()I
    .locals 1

    .prologue
    .line 339
    const/16 v0, 0x2000

    return v0
.end method

.method public static lastSytemId()I
    .locals 1

    .prologue
    .line 335
    const/16 v0, 0x20

    return v0
.end method

.method public static lastType()I
    .locals 1

    .prologue
    .line 343
    const/16 v0, 0x8

    return v0
.end method

.method private scanAllRecords(Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bytesLeft"    # I

    .prologue
    const/16 v9, 0xc

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, "recCount":I
    const/4 v0, 0x0

    .line 158
    .local v0, "error":Z
    iget-object v6, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 159
    :goto_0
    if-gt p2, v9, :cond_1

    .line 203
    :goto_1
    if-nez p2, :cond_0

    if-eqz v0, :cond_7

    .line 204
    :cond_0
    const-string v6, "media.Metadata"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ran out of data or error on record "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v6, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 206
    const/4 v6, 0x0

    .line 208
    :goto_2
    return v6

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 162
    .local v5, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 164
    .local v4, "size":I
    if-gt v4, v9, :cond_2

    .line 166
    const-string v6, "media.Metadata"

    const-string v7, "Record is too short"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x1

    .line 168
    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .local v1, "metadataId":I
    invoke-direct {p0, v1}, Lio/vov/vitamio/Metadata;->checkMetadataId(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_1

    .line 181
    :cond_3
    iget-object v6, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 182
    const-string v6, "media.Metadata"

    const-string v7, "Duplicate metadata ID found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x1

    .line 184
    goto :goto_1

    .line 187
    :cond_4
    iget-object v6, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "metadataType":I
    if-lez v2, :cond_5

    const/16 v6, 0x8

    if-le v2, v6, :cond_6

    .line 192
    :cond_5
    const-string v6, "media.Metadata"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid metadata type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x1

    .line 194
    goto/16 :goto_1

    .line 198
    :cond_6
    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 199
    sub-int/2addr p2, v4

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 208
    .end local v1    # "metadataId":I
    .end local v2    # "metadataType":I
    .end local v4    # "size":I
    .end local v5    # "start":I
    :cond_7
    const/4 v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getBoolean(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 291
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 292
    iget-object v1, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 306
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 307
    iget-object v0, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 311
    const/4 v5, 0x7

    invoke-direct {p0, p1, v5}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 312
    iget-object v5, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 313
    .local v2, "timeSinceEpoch":J
    iget-object v5, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "timeZone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 316
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 322
    :goto_0
    return-object v5

    .line 318
    :cond_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 319
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 321
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 322
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 301
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 302
    iget-object v0, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 286
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 287
    iget-object v0, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 296
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 297
    iget-object v0, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 282
    iget-object v0, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimedText(I)Lio/vov/vitamio/Metadata$TimedText;
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 327
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Lio/vov/vitamio/Metadata;->checkType(II)V

    .line 328
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 329
    .local v1, "startTime":Ljava/util/Date;
    iget-object v2, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .local v0, "duration":I
    new-instance v2, Lio/vov/vitamio/Metadata$TimedText;

    iget-object v3, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v1, v0, v3}, Lio/vov/vitamio/Metadata$TimedText;-><init>(Lio/vov/vitamio/Metadata;Ljava/util/Date;ILjava/lang/String;)V

    return-object v2
.end method

.method public has(I)Z
    .locals 3
    .param p1, "metadataId"    # I

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lio/vov/vitamio/Metadata;->checkMetadataId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lio/vov/vitamio/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 242
    const-string v4, "media.Metadata"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not enough data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return v3

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 247
    .local v1, "pin":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-lt v4, v2, :cond_1

    if-ge v2, v5, :cond_2

    .line 249
    :cond_1
    const-string v4, "media.Metadata"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " avail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .local v0, "kShouldBeMetaMarker":I
    const v4, 0x4d455441    # 2.06914576E8f

    if-eq v0, v4, :cond_3

    .line 256
    const-string v4, "media.Metadata"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Marker missing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 261
    :cond_3
    add-int/lit8 v4, v2, -0x8

    invoke-direct {p0, p1, v4}, Lio/vov/vitamio/Metadata;->scanAllRecords(Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 262
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 265
    :cond_4
    iput-object p1, p0, Lio/vov/vitamio/Metadata;->mParcel:Landroid/os/Parcel;

    .line 266
    const/4 v3, 0x1

    goto :goto_0
.end method
