.class public Lcom/android/calendar/event/EventLocationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EventLocationAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;,
        Lcom/android/calendar/event/EventLocationAdapter$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/calendar/event/EventLocationAdapter$Result;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener",
        "<",
        "Lcom/android/calendar/event/EventLocationAdapter$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final CONTACTS_WHERE:Ljava/lang/String;

.field private static EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mFetchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPhotoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/SuggestionFetcher",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/calendar/event/EventLocationAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/event/EventLocationAdapter;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? OR "

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? OR "

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_name"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? OR "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_name"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? )"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/EventLocationAdapter;->CONTACTS_WHERE:Ljava/lang/String;

    .line 183
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "eventLocation"

    aput-object v1, v0, v3

    const-string v1, "visible"

    aput-object v1, v0, v4

    const-string v1, "calendar_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/event/EventLocationAdapter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 213
    sget v0, Lcom/android/calendar/R$layout;->suggestion_dropdown_item:I

    sget-object v1, Lcom/android/calendar/event/EventLocationAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResultList:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mQueryResults:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mFetchResults:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mPhotoCache:Ljava/util/Map;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 216
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 217
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getLocationFetcher()Lcom/android/calendar/timely/SuggestionFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    .line 218
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/SuggestionFetcher;->initialize(Landroid/content/Context;Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;)V

    .line 221
    :cond_0
    return-void
.end method

.method static synthetic access$1002(Lcom/android/calendar/event/EventLocationAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter;->mQueryResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EventLocationAdapter;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EventLocationAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mPhotoCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EventLocationAdapter;)Lcom/android/calendar/timely/SuggestionFetcher;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/EventLocationAdapter;->queryRecentLocations(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/event/EventLocationAdapter;->queryContacts(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private asyncLoadPhotoAndUpdateView(Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lcom/android/calendar/event/EventLocationAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/calendar/event/EventLocationAdapter$1;-><init>(Lcom/android/calendar/event/EventLocationAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 346
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EventLocationAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    return-void
.end method

.method private static processLocationsQueryResults(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 562
    new-instance v6, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 564
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 567
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 568
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 569
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 570
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 571
    new-instance v0, Lcom/google/android/calendar/event/TimelyEditHelper;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEditHelper;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    .line 572
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/event/TimelyEditHelper;->loadExtras(Landroid/content/Context;JJ)Lcom/android/calendar/event/EventExtras;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 581
    new-instance v0, Lcom/android/calendar/event/EventLocationAdapter$Result;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getName()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getMapsClusterId()Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/android/calendar/R$drawable;->ic_history_holo_light:I

    .line 583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/event/EventLocationAdapter$Result;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v1, v0

    .line 591
    :goto_1
    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EventLocationAdapter$Result;

    .line 592
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/event/EventLocationAdapter$Result;->getReference()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 593
    :cond_1
    invoke-virtual {v6, v7, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_2
    new-instance v0, Lcom/android/calendar/event/EventLocationAdapter$Result;

    sget v1, Lcom/android/calendar/R$drawable;->ic_history_holo_light:I

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    move-object v2, v9

    move-object v3, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/event/EventLocationAdapter$Result;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;)V

    move-object v1, v0

    goto :goto_1

    .line 598
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static queryContacts(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 463
    .line 467
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 468
    sget-object v3, Lcom/android/calendar/event/EventLocationAdapter;->CONTACTS_WHERE:Ljava/lang/String;

    .line 469
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    new-array v4, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    .line 475
    :goto_0
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/event/EventLocationAdapter;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "display_name ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 480
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 481
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 482
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    if-eqz v2, :cond_0

    .line 487
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 489
    if-nez v0, :cond_2

    .line 492
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 493
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    .line 494
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 493
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 498
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-interface {v9, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v0, Lcom/android/calendar/event/EventLocationAdapter$Result;

    sget v1, Lcom/android/calendar/R$drawable;->ic_no_avatar_large:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/event/EventLocationAdapter$Result;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;)V

    move-object v1, v7

    .line 507
    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-virtual {p3, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 520
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 504
    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/calendar/event/EventLocationAdapter$Result;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/calendar/event/EventLocationAdapter$Result;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    .line 513
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 515
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 520
    :cond_4
    if-eqz v8, :cond_5

    .line 521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_5
    return-object v1

    :cond_6
    move-object v5, v6

    goto :goto_2

    :cond_7
    move-object v4, v6

    move-object v3, v6

    goto/16 :goto_0
.end method

.method private static queryRecentLocations(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 532
    if-nez p2, :cond_0

    const-string v0, ""

    .line 533
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    :goto_1
    return-object v6

    .line 532
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/event/EventLocationAdapter;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "visible=? AND eventLocation LIKE ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "1"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v5, "_id DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_4

    .line 547
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/calendar/event/EventLocationAdapter;->processLocationsQueryResults(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 551
    :goto_2
    if-eqz v1, :cond_2

    .line 552
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v6, v0

    .line 549
    goto :goto_1

    .line 551
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 552
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized buildResultSet()V
    .locals 2

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 441
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResultList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter;->mQueryResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 442
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResultList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter;->mFetchResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 443
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/calendar/event/EventLocationAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :goto_0
    monitor-exit p0

    return-void

    .line 446
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventLocationAdapter;->notifyDataSetInvalidated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;-><init>(Lcom/android/calendar/event/EventLocationAdapter;)V

    return-object v0
.end method

.method public getItem(I)Lcom/android/calendar/event/EventLocationAdapter$Result;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EventLocationAdapter$Result;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter;->getItem(I)Lcom/android/calendar/event/EventLocationAdapter$Result;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter;->getItem(I)Lcom/android/calendar/event/EventLocationAdapter$Result;

    move-result-object v0

    .line 242
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mIsHeader:Z
    invoke-static {v0}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$000(Lcom/android/calendar/event/EventLocationAdapter$Result;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter;->getItemViewType(I)I

    move-result v0

    .line 260
    if-nez p2, :cond_0

    .line 261
    packed-switch v0, :pswitch_data_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->suggestion_dropdown_item:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter;->getItem(I)Lcom/android/calendar/event/EventLocationAdapter$Result;

    move-result-object v2

    .line 277
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    if-eqz v0, :cond_1

    .line 279
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$100(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 280
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :cond_1
    :goto_1
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    if-eqz v0, :cond_2

    .line 290
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$200(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 295
    if-eqz v0, :cond_3

    .line 296
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mDefaultIcon:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$300(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5

    .line 297
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    :cond_3
    :goto_2
    return-object p2

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->suggestion_dropdown_header:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$100(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 299
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mDefaultIcon:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$300(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$400(Lcom/android/calendar/event/EventLocationAdapter$Result;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 306
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$400(Lcom/android/calendar/event/EventLocationAdapter$Result;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter;->mPhotoCache:Ljava/util/Map;

    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$400(Lcom/android/calendar/event/EventLocationAdapter$Result;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 308
    if-eqz v1, :cond_6

    .line 310
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 313
    :cond_6
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$400(Lcom/android/calendar/event/EventLocationAdapter$Result;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/event/EventLocationAdapter;->asyncLoadPhotoAndUpdateView(Landroid/net/Uri;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdateSuggestions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 611
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter;->mFetchResults:Ljava/util/List;

    .line 615
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventLocationAdapter;->buildResultSet()V

    .line 616
    return-void

    .line 613
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter;->mFetchResults:Ljava/util/List;

    goto :goto_0
.end method
