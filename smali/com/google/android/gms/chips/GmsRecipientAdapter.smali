.class public Lcom/google/android/gms/chips/GmsRecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "GmsRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;,
        Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;
    }
.end annotation


# instance fields
.field private final mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mExistingDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/GmsPhotoManager;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 66
    iput-object p3, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 67
    invoke-virtual {p0, p4}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->setPhotoManager(Lcom/android/ex/chips/PhotoManager;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gms/chips/GmsRecipientAdapter;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gms/chips/GmsRecipientAdapter;II)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->cacheCurrentEntriesIfNeeded(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->updateEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/gms/chips/GmsRecipientAdapter;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->updateEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gms/chips/GmsRecipientAdapter;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mShowRequestPermissionsItem:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/Set;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->searchOtherDirectories(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mEntryList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object p1
.end method


# virtual methods
.method protected constructEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mEntryList:Ljava/util/List;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;-><init>(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V

    return-object v0
.end method

.method protected putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;Z)V
    .locals 13

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mPreferredMaxResultCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    .line 240
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v1, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v2, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v3, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v4, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v5, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-object v7, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->directoryId:Ljava/lang/Long;

    iget-wide v8, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v10, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->lookupKey:Ljava/lang/String;

    invoke-static/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->getPhotoManager()Lcom/android/ex/chips/PhotoManager;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/ex/chips/PhotoManager;->populatePhotoBytesAsync(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    goto :goto_0
.end method
