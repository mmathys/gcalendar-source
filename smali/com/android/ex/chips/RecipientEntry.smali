.class public Lcom/android/ex/chips/RecipientEntry;
.super Ljava/lang/Object;
.source "RecipientEntry.java"


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDirectoryId:Ljava/lang/Long;

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private mIndicatorIconId:I

.field private mIndicatorText:Ljava/lang/String;

.field private mIsFirstLevel:Z

.field private mIsValid:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mPermissions:[Ljava/lang/String;

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;

.field private final mShouldDisplayIcon:Z


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 102
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZZLjava/lang/String;[Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZZLjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 112
    iput-boolean p13, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    .line 113
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 115
    iput p4, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 116
    iput-object p5, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 117
    iput-wide p6, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 118
    iput-object p8, p0, Lcom/android/ex/chips/RecipientEntry;->mDirectoryId:Ljava/lang/Long;

    .line 119
    iput-wide p9, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 120
    iput-object p11, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 121
    iput-boolean p12, p0, Lcom/android/ex/chips/RecipientEntry;->mShouldDisplayIcon:Z

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 123
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    .line 124
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mLookupKey:Ljava/lang/String;

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorIconId:I

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorText:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPermissions:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method public static constructPermissionEntry([Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 16

    .prologue
    .line 211
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v0 .. v15}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 19

    .prologue
    .line 203
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p10, :cond_0

    .line 206
    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :goto_0
    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v3 .. v18}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    .line 203
    return-object v3

    .line 206
    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 19

    .prologue
    .line 192
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p10, :cond_0

    .line 195
    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :goto_0
    const/4 v15, 0x1

    const/16 v18, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v3 .. v18}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    .line 192
    return-object v3

    .line 195
    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private static pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    return v0
.end method

.method public getIndicatorIconId()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorIconId:I

    return v0
.end method

.method public getIndicatorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorText:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 306
    iget v1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " <"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
