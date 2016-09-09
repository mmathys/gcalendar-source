.class public Lcom/android/emailcommon/provider/HostAuth;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "HostAuth.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mClientCertAlias:Ljava/lang/String;

.field public transient mCredential:Lcom/android/emailcommon/provider/Credential;

.field public mCredentialKey:J

.field public mDomain:Ljava/lang/String;

.field public mFlags:I

.field public mLogin:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:Ljava/lang/String;

.field private mSSLVerificationStatus:I

.field private mSafeConnectionStatus:I

.field public mServerCert:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 183
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "domain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "certAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "credentialKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 667
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 191
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 193
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mSafeConnectionStatus:I

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mSSLVerificationStatus:I

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 712
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 713
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 716
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 723
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    .line 729
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/Credential;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 730
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    sget-object v1, Lcom/android/emailcommon/provider/Credential;->EMPTY:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Credential;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 740
    instance-of v1, p1, Lcom/android/emailcommon/provider/HostAuth;

    if-nez v1, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 743
    :cond_1
    check-cast p1, Lcom/android/emailcommon/provider/HostAuth;

    .line 744
    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    iget-wide v4, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    iget v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 747
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 748
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 749
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 750
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 751
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 752
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 761
    const/16 v0, 0x1d

    .line 762
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 768
    :cond_1
    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 832
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "[port: %d \nid: %d \nflags: %d \nprotocol: %s \naddress: %s \nlogin: %s \ndomain: %s \ncertificate alias: %s]"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 841
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 832
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 686
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 687
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 695
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 700
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 701
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    if-nez v0, :cond_1

    .line 702
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->EMPTY:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/Credential;->writeToParcel(Landroid/os/Parcel;I)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/Credential;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
