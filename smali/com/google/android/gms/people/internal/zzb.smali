.class public Lcom/google/android/gms/people/internal/zzb;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/people/model/AutocompleteEntry;


# instance fields
.field private final zzamw:Landroid/os/Bundle;

.field private final zzbpm:Lcom/google/android/gms/people/model/AutocompleteBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/model/AutocompleteBuffer;Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p4, p0, Lcom/google/android/gms/people/internal/zzb;->zzamw:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/people/internal/zzb;->zzbpm:Lcom/google/android/gms/people/model/AutocompleteBuffer;

    return-void
.end method


# virtual methods
.method public getAndroidContactDataId()J
    .locals 2

    const-string v0, "cp2_data_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAndroidContactId()J
    .locals 2

    const-string v0, "cp2_contact_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvatarReference()Lcom/google/android/gms/people/model/AvatarReference;
    .locals 3

    const-string v0, "avatar_location"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "avatar_source"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzb;->getInteger(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Lcom/google/android/gms/people/model/AvatarReference;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/people/model/AvatarReference;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonKey()Ljava/lang/String;
    .locals 1

    const-string v0, "person_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
