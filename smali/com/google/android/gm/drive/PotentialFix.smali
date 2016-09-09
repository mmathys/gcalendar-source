.class public Lcom/google/android/gm/drive/PotentialFix;
.super Ljava/lang/Object;
.source "PotentialFix.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllowedRoles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomainDisplayName:Ljava/lang/String;

.field private final mFixableFileIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFixableRecipientEmailAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFixesEverything:Z

.field private final mOptionType:Ljava/lang/String;

.field private final mOutOfDomainWarningEmailAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/gm/drive/PotentialFix$1;

    invoke-direct {v0}, Lcom/google/android/gm/drive/PotentialFix$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/drive/PotentialFix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOptionType:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableRecipientEmailAddresses:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableRecipientEmailAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableFileIds:Ljava/util/List;

    .line 122
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableFileIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixesEverything:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mDomainDisplayName:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOutOfDomainWarningEmailAddresses:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOutOfDomainWarningEmailAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 129
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getOptionType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOptionType:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getFixableRecipientEmailAddresses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableRecipientEmailAddresses:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getFixableFileIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableFileIds:Ljava/util/List;

    .line 62
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getFixesEverything()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixesEverything:Z

    .line 63
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getAllowedRoles()Ljava/util/List;

    move-result-object v0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    .line 66
    const-string v2, "READER"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    const-string v3, "READER"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    const-string v2, "COMMENTER"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    const-string v3, "COMMENTER"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    const-string v2, "WRITER"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    const-string v2, "WRITER"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getIncreaseDomainVisibilityInfo()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;->getDomainDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mDomainDisplayName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getAddCollaboratorsInfo()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;->getOutOfDomainWarningEmailAddresses()Ljava/util/List;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/google/android/gm/drive/PotentialFix;->mOutOfDomainWarningEmailAddresses:Ljava/util/List;

    .line 84
    return-void

    :cond_4
    move-object v0, v1

    .line 78
    goto :goto_0
.end method

.method public static isSupportedFixOption(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    const-string v0, "ADD_COLLABORATORS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INCREASE_PUBLIC_VISIBILITY"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INCREASE_DOMAIN_VISIBILITY"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public fixesEverything()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixesEverything:Z

    return v0
.end method

.method public getAllowedRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    return-object v0
.end method

.method public getDomainDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mDomainDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFixableFileIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableFileIds:Ljava/util/List;

    return-object v0
.end method

.method public getFixableRecipientEmailAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableRecipientEmailAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getOptionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOfDomainWarningEmailAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOutOfDomainWarningEmailAddresses:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOptionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableRecipientEmailAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixableFileIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mAllowedRoles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 137
    iget-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mFixesEverything:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mDomainDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->mOutOfDomainWarningEmailAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 140
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
