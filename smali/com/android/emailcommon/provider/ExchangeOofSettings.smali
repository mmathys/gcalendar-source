.class public Lcom/android/emailcommon/provider/ExchangeOofSettings;
.super Ljava/lang/Object;
.source "ExchangeOofSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/ExchangeOofSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public end:J

.field public externalKnownEnabled:Z

.field public externalKnownMessage:Ljava/lang/String;

.field public externalKnownMessageType:I

.field public externalUnknownEnabled:Z

.field public externalUnknownMessage:Ljava/lang/String;

.field public externalUnknownMessageType:I

.field public internalEnabled:Z

.field public internalMessage:Ljava/lang/String;

.field public internalMessageType:I

.field public isDirty:Z

.field public start:J

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/android/emailcommon/provider/ExchangeOofSettings$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ExchangeOofSettings$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/provider/ExchangeOofSettings;->convertIntToOofState(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->state:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->start:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->end:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->isDirty:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalEnabled:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/provider/ExchangeOofSettings;->convertIntToMessageType(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessageType:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownEnabled:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/provider/ExchangeOofSettings;->convertIntToMessageType(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessageType:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownEnabled:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/provider/ExchangeOofSettings;->convertIntToMessageType(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessageType:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_1

    :cond_2
    move v0, v2

    .line 114
    goto :goto_2

    :cond_3
    move v1, v2

    .line 117
    goto :goto_3
.end method

.method public static convertIntToMessageType(I)I
    .locals 3

    .prologue
    .line 194
    packed-switch p0, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid message type provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :pswitch_0
    return p0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertIntToOofState(I)I
    .locals 3

    .prologue
    .line 204
    packed-switch p0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid oof state provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :pswitch_0
    return p0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 350
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    instance-of v2, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;

    if-eqz v2, :cond_0

    .line 310
    check-cast p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;

    .line 312
    iget v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->state:I

    iget v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->state:I

    if-ne v2, v3, :cond_0

    .line 315
    iget-wide v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->start:J

    iget-wide v4, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 318
    iget-wide v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->end:J

    iget-wide v4, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->end:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 321
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->isDirty:Z

    iget-boolean v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->isDirty:Z

    if-ne v2, v3, :cond_0

    .line 324
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalEnabled:Z

    iget-boolean v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalEnabled:Z

    if-ne v2, v3, :cond_0

    .line 327
    iget v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessageType:I

    iget v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessageType:I

    if-ne v2, v3, :cond_0

    .line 330
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownEnabled:Z

    iget-boolean v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownEnabled:Z

    if-ne v2, v3, :cond_0

    .line 333
    iget v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessageType:I

    iget v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessageType:I

    if-ne v2, v3, :cond_0

    .line 336
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownEnabled:Z

    iget-boolean v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownEnabled:Z

    if-ne v2, v3, :cond_0

    .line 339
    iget v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessageType:I

    iget v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessageType:I

    if-ne v2, v3, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    :cond_3
    iget-object v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    :goto_1
    move v1, v0

    .line 350
    goto :goto_0

    .line 342
    :cond_6
    iget-object v2, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 346
    :cond_7
    iget-object v2, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 351
    :cond_8
    iget-object v2, p1, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_1
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    iget v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->state:I

    .line 359
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->start:J

    iget-wide v6, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->start:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 360
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->end:J

    iget-wide v6, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->end:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 361
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->isDirty:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 362
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalEnabled:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 363
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessageType:I

    add-int/2addr v0, v3

    .line 364
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 365
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 366
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessageType:I

    add-int/2addr v0, v3

    .line 367
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 368
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownEnabled:Z

    if-eqz v3, :cond_6

    :goto_5
    add-int/2addr v0, v1

    .line 369
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessageType:I

    add-int/2addr v0, v1

    .line 370
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 371
    :cond_0
    add-int/2addr v0, v2

    .line 372
    return v0

    :cond_1
    move v0, v2

    .line 361
    goto :goto_0

    :cond_2
    move v0, v2

    .line 362
    goto :goto_1

    :cond_3
    move v0, v2

    .line 364
    goto :goto_2

    :cond_4
    move v0, v2

    .line 365
    goto :goto_3

    :cond_5
    move v0, v2

    .line 367
    goto :goto_4

    :cond_6
    move v1, v2

    .line 368
    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->state:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->start:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->end:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->isDirty:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalEnabled:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessageType:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownEnabled:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessageType:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownEnabled:Z

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessageType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x173

    move/from16 v18, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v18, "ExchangeOofSettings{state="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ", start="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isDirty="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", internalEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", internalMessageType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", internalMessage=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", externalKnownEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", externalKnownMessageType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", externalKnownMessage=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", externalUnknownEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", externalUnknownMessageType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", externalUnknownMessage=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-wide v4, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->start:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-wide v4, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->end:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->isDirty:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->internalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownEnabled:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalKnownMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownEnabled:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Lcom/android/emailcommon/provider/ExchangeOofSettings;->externalUnknownMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v0, v2

    .line 258
    goto :goto_1

    :cond_2
    move v0, v2

    .line 261
    goto :goto_2

    :cond_3
    move v1, v2

    .line 264
    goto :goto_3
.end method
