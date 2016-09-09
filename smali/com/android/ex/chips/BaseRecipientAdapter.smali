.class public Lcom/android/ex/chips/BaseRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseRecipientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;,
        Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field protected mCurrentConstraint:Ljava/lang/CharSequence;

.field private final mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

.field private mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesUpdatedObserver:Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

.field private mEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;"
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

.field private mNonAggregatedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsCheckListener:Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;

.field private mPhotoManager:Lcom/android/ex/chips/PhotoManager;

.field protected final mPreferredMaxResultCount:I

.field private final mQueryMode:Lcom/android/ex/chips/Queries$Query;

.field private final mQueryType:I

.field private mRemainingDirectoryCount:I

.field protected mShowRequestPermissionsItem:Z

.field private mTempEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 580
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 581
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .prologue
    .line 595
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 572
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    .line 596
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    .line 597
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 598
    iput p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    .line 599
    new-instance v0, Lcom/android/ex/chips/DefaultPhotoManager;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/android/ex/chips/DefaultPhotoManager;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoManager:Lcom/android/ex/chips/PhotoManager;

    .line 600
    iput p3, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryType:I

    .line 602
    if-nez p3, :cond_0

    .line 603
    sget-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryMode:Lcom/android/ex/chips/Queries$Query;

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 605
    sget-object v0, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryMode:Lcom/android/ex/chips/Queries$Query;

    goto :goto_0

    .line 607
    :cond_1
    sget-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryMode:Lcom/android/ex/chips/Queries$Query;

    .line 608
    const-string v0, "BaseRecipientAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPermissionsCheckListener:Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1010(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    return-object v0
.end method

.method private constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 858
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 860
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 861
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 862
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v4, v2

    move v3, v1

    .line 863
    :goto_1
    if-ge v4, v7, :cond_0

    .line 864
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientEntry;

    .line 865
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoManager:Lcom/android/ex/chips/PhotoManager;

    invoke-interface {v8, v1, p0}, Lcom/android/ex/chips/PhotoManager;->populatePhotoBytesAsync(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    .line 867
    add-int/lit8 v3, v3, 0x1

    .line 863
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 869
    :cond_0
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v3, v0, :cond_2

    .line 873
    :goto_2
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-gt v3, v0, :cond_1

    .line 874
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 875
    iget v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v3, v2, :cond_3

    .line 884
    :cond_1
    return-object v5

    :cond_2
    move v1, v3

    .line 872
    goto :goto_0

    .line 878
    :cond_3
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoManager:Lcom/android/ex/chips/PhotoManager;

    invoke-interface {v2, v0, p0}, Lcom/android/ex/chips/PhotoManager;->populatePhotoBytesAsync(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    .line 880
    add-int/lit8 v3, v3, 0x1

    .line 881
    goto :goto_3

    :cond_4
    move v3, v1

    goto :goto_2
.end method

.method private doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 933
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPermissionsCheckListener:Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;

    invoke-static {v0, v1}, Lcom/android/ex/chips/ChipsUtil;->hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    :goto_0
    return-object v3

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryMode:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v0}, Lcom/android/ex/chips/Queries$Query;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 941
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    add-int/lit8 v2, p2, 0x5

    .line 943
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 944
    if-eqz p3, :cond_1

    .line 945
    const-string v0, "directory"

    .line 946
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 945
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 949
    const-string v0, "name_for_primary_account"

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 950
    const-string v0, "type_for_primary_account"

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 952
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 953
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 954
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryMode:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    .line 953
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_0
.end method

.method private static putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;",
            "Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    :goto_0
    return-void

    .line 811
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 813
    if-nez p1, :cond_1

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->directoryId:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->lookupKey:Ljava/lang/String;

    invoke-static/range {v2 .. v14}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 820
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 822
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->directoryId:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->lookupKey:Ljava/lang/String;

    invoke-static/range {v2 .. v14}, Lcom/android/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 830
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->directoryId:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->lookupKey:Ljava/lang/String;

    invoke-static/range {v2 .. v14}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 713
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 714
    const/4 v1, 0x0

    .line 715
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 720
    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    invoke-direct {v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;-><init>()V

    .line 725
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 726
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 727
    iput-wide v6, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    .line 728
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->displayName:Ljava/lang/String;

    .line 729
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    .line 730
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    .line 731
    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    .line 734
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 735
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    .line 736
    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 737
    const-string v2, "BaseRecipientAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2b

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Cannot resolve directory name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    .line 750
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    .line 751
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    move-object v1, v0

    .line 756
    goto/16 :goto_0

    .line 740
    :catch_0
    move-exception v2

    .line 741
    const-string v6, "BaseRecipientAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2b

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Cannot resolve directory name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 754
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 758
    :cond_3
    if-eqz v1, :cond_4

    .line 759
    invoke-interface {v4, v10, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 762
    :cond_4
    return-object v4
.end method


# virtual methods
.method protected cacheCurrentEntries()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    .line 918
    return-void
.end method

.method protected cacheCurrentEntriesIfNeeded(II)V
    .locals 1

    .prologue
    .line 911
    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->cacheCurrentEntries()V

    .line 914
    :cond_0
    return-void
.end method

.method protected clearTempEntries()V
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    .line 922
    return-void
.end method

.method protected constructEntryList()Ljava/util/List;
    .locals 2
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
    .line 847
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 977
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEntries()Ljava/util/List;
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
    .line 925
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 697
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V

    return-object v0
.end method

.method public getItem(I)Lcom/android/ex/chips/RecipientEntry;
    .locals 1

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItem(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 987
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v0

    return v0
.end method

.method public getPermissionsCheckListener()Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPermissionsCheckListener:Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;

    return-object v0
.end method

.method public getPhotoManager()Lcom/android/ex/chips/PhotoManager;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoManager:Lcom/android/ex/chips/PhotoManager;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/RecipientEntry;

    .line 1009
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v6, 0x0

    .line 1012
    :goto_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    sget-object v5, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->BASE_RECIPIENT:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    move-object v1, p2

    move-object v2, p3

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/chips/DropdownChipLayouter;->bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public onPhotoBytesAsyncLoadFailed()V
    .locals 0

    .prologue
    .line 1033
    return-void
.end method

.method public onPhotoBytesAsynchronouslyPopulated()V
    .locals 0

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 1028
    return-void
.end method

.method public onPhotoBytesPopulated()V
    .locals 0

    .prologue
    .line 1023
    return-void
.end method

.method protected putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;Z)V
    .locals 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    .line 801
    return-void
.end method

.method public registerUpdateObserver(Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntriesUpdatedObserver:Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    .line 894
    return-void
.end method

.method protected searchOtherDirectories(Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPermissionsCheckListener:Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;

    invoke-static {v0, v1}, Lcom/android/ex/chips/ChipsUtil;->hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    .line 387
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 368
    if-lez v0, :cond_3

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 379
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v6, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 381
    if-eqz v6, :cond_0

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object v0, v6

    .line 387
    goto :goto_0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    .line 678
    return-void
.end method

.method public setDropdownChipLayouter(Lcom/android/ex/chips/DropdownChipLayouter;)V
    .locals 2

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 622
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryMode:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/DropdownChipLayouter;->setQuery(Lcom/android/ex/chips/Queries$Query;)V

    .line 623
    return-void
.end method

.method public setPhotoManager(Lcom/android/ex/chips/PhotoManager;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoManager:Lcom/android/ex/chips/PhotoManager;

    .line 643
    return-void
.end method

.method protected startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 771
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 773
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 774
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 775
    iput-object p1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->constraint:Ljava/lang/CharSequence;

    .line 776
    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    if-nez v3, :cond_0

    .line 777
    new-instance v3, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-direct {v3, p0, v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V

    iput-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    .line 779
    :cond_0
    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p3}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->setLimit(I)V

    .line 780
    iget-object v0, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->filter(Ljava/lang/CharSequence;)V

    .line 773
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 785
    :cond_1
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    .line 786
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 787
    return-void
.end method

.method protected updateEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    .line 899
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntriesUpdatedObserver:Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    invoke-interface {v0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;->onChanged(Ljava/util/List;)V

    .line 900
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 901
    return-void
.end method
