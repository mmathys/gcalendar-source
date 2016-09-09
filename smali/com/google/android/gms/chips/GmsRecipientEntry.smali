.class public Lcom/google/android/gms/chips/GmsRecipientEntry;
.super Lcom/android/ex/chips/RecipientEntry;
.source "GmsRecipientEntry.java"


# instance fields
.field private mAutocompletion:Lcom/google/android/gms/chips/Autocomplete$Autocompletion;

.field private final mAvatarReference:Lcom/google/android/gms/people/model/AvatarReference;

.field private final mPersonKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/model/AutocompleteEntry;)V
    .locals 17

    .prologue
    .line 22
    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getPersonDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getItemValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 23
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getAndroidContactId()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getAndroidContactDataId()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    .line 22
    invoke-direct/range {v1 .. v16}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getPersonKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/chips/GmsRecipientEntry;->mPersonKey:Ljava/lang/String;

    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getAvatarReference()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/chips/GmsRecipientEntry;->mAvatarReference:Lcom/google/android/gms/people/model/AvatarReference;

    .line 30
    return-void
.end method


# virtual methods
.method public getAutocompletion()Lcom/google/android/gms/chips/Autocomplete$Autocompletion;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientEntry;->mAutocompletion:Lcom/google/android/gms/chips/Autocomplete$Autocompletion;

    return-object v0
.end method

.method public getAvatarReference()Lcom/google/android/gms/people/model/AvatarReference;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientEntry;->mAvatarReference:Lcom/google/android/gms/people/model/AvatarReference;

    return-object v0
.end method

.method public getPerson()Lcom/google/android/gms/chips/Autocomplete$Person;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientEntry;->mAutocompletion:Lcom/google/android/gms/chips/Autocomplete$Autocompletion;

    invoke-interface {v0}, Lcom/google/android/gms/chips/Autocomplete$Autocompletion;->getPerson()Lcom/google/android/gms/chips/Autocomplete$Person;

    move-result-object v0

    return-object v0
.end method

.method public getPersonKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientEntry;->mPersonKey:Ljava/lang/String;

    return-object v0
.end method
