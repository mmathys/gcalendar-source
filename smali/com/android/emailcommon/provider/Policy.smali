.class public final Lcom/android/emailcommon/provider/Policy;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;


# static fields
.field private static final ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_POLICY:Lcom/android/emailcommon/provider/Policy;


# instance fields
.field public mDontAllowAttachments:Z

.field public mDontAllowCamera:Z

.field public mDontAllowHtml:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarLookback:I

.field public mMaxEmailLookback:I

.field public mMaxHtmlTruncationSize:I

.field public mMaxScreenLockTime:I

.field public mMaxTextTruncationSize:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMaxFails:I

.field public mPasswordMinLength:I

.field public mPasswordMode:I

.field public mPasswordRecoveryEnabled:Z

.field public mProtocolPoliciesEnforced:Ljava/lang/String;

.field public mProtocolPoliciesUnsupported:Ljava/lang/String;

.field public mRequireEncryption:Z

.field public mRequireEncryptionExternal:Z

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "passwordMode"

    aput-object v1, v0, v4

    const-string v1, "passwordMinLength"

    aput-object v1, v0, v5

    const-string v1, "passwordExpirationDays"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "passwordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "passwordComplexChars"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "passwordMaxFails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxScreenLockTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "requireRemoteWipe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "requireEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "requireEncryptionExternal"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "requireManualSyncRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dontAllowCamera"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dontAllowAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dontAllowHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "maxTextTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "maxHTMLTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "maxEmailLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "maxCalendarLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "passwordRecoveryEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "protocolPoliciesEnforced"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "protocolPoliciesUnsupported"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    .line 125
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "size"

    aput-object v1, v0, v4

    const-string v1, "flags"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    .line 477
    new-instance v0, Lcom/android/emailcommon/provider/Policy$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 132
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 523
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 524
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 548
    return-void

    :cond_0
    move v0, v2

    .line 533
    goto :goto_0

    :cond_1
    move v0, v2

    .line 534
    goto :goto_1

    :cond_2
    move v0, v2

    .line 535
    goto :goto_2

    :cond_3
    move v0, v2

    .line 536
    goto :goto_3

    :cond_4
    move v0, v2

    .line 537
    goto :goto_4

    :cond_5
    move v0, v2

    .line 538
    goto :goto_5

    :cond_6
    move v0, v2

    .line 539
    goto :goto_6

    :cond_7
    move v1, v2

    .line 545
    goto :goto_7
.end method

.method private static appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    instance-of v1, p1, Lcom/android/emailcommon/provider/Policy;

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    check-cast p1, Lcom/android/emailcommon/provider/Policy;

    .line 257
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-ne v1, v2, :cond_0

    .line 258
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-ne v1, v2, :cond_0

    .line 259
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-ne v1, v2, :cond_0

    .line 260
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-ne v1, v2, :cond_0

    .line 261
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v1, v2, :cond_0

    .line 262
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v1, v2, :cond_0

    .line 263
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v1, v2, :cond_0

    .line 264
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v1, v2, :cond_0

    .line 265
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ne v1, v2, :cond_0

    .line 266
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v1, v2, :cond_0

    .line 267
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-ne v1, v2, :cond_0

    .line 271
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-ne v1, v2, :cond_0

    .line 274
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v1, v2, :cond_0

    .line 275
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-ne v1, v2, :cond_0

    .line 276
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-ne v1, v2, :cond_0

    .line 277
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    if-ne v1, v2, :cond_0

    .line 278
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    if-ne v1, v2, :cond_0

    .line 279
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-ne v1, v2, :cond_0

    .line 280
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    if-ne v1, v2, :cond_0

    .line 281
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-ne v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 297
    :goto_0
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 298
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v3, :cond_2

    :goto_2
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 299
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 300
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 301
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 302
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    shl-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    .line 303
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr v0, v1

    .line 304
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    shl-int/lit8 v1, v1, 0x16

    add-int/2addr v0, v1

    .line 305
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    shl-int/lit8 v1, v1, 0x1a

    add-int/2addr v0, v1

    .line 307
    return v0

    :cond_0
    move v0, v2

    .line 296
    goto :goto_0

    :cond_1
    move v3, v2

    .line 297
    goto :goto_1

    :cond_2
    move v1, v2

    .line 298
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const-string v1, "No policies]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v1, :cond_7

    .line 433
    const-string v1, "Pwd none "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :goto_1
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_1

    .line 444
    const-string v1, "encrypt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v1, :cond_2

    .line 447
    const-string v1, "encryptsd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_2
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v1, :cond_3

    .line 450
    const-string v1, "nocamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_3
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v1, :cond_4

    .line 453
    const-string v1, "noatts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_4
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v1, :cond_5

    .line 456
    const-string v1, "nopushroam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_5
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v1, :cond_6

    .line 459
    const-string v1, "attmax"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 461
    :cond_6
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 435
    :cond_7
    const-string v1, "Pwd numeric"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 436
    const-string v1, "len"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 437
    const-string v1, "cmpx"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 438
    const-string v1, "expy"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 439
    const-string v1, "hist"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 440
    const-string v1, "fail"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 441
    const-string v1, "idle"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 495
    iget-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 496
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-eqz v0, :cond_7

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    return-void

    :cond_0
    move v0, v2

    .line 503
    goto :goto_0

    :cond_1
    move v0, v2

    .line 504
    goto :goto_1

    :cond_2
    move v0, v2

    .line 505
    goto :goto_2

    :cond_3
    move v0, v2

    .line 506
    goto :goto_3

    :cond_4
    move v0, v2

    .line 507
    goto :goto_4

    :cond_5
    move v0, v2

    .line 508
    goto :goto_5

    :cond_6
    move v0, v2

    .line 509
    goto :goto_6

    :cond_7
    move v1, v2

    .line 515
    goto :goto_7
.end method
