.class public Lcom/android/calendar/timely/ContactInfoLoader;
.super Ljava/lang/Object;
.source "ContactInfoLoader.java"


# static fields
.field private static final CONTACTS_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHasContactsPermissions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    const-class v0, Lcom/android/calendar/timely/ContactInfoLoader;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->TAG:Ljava/lang/String;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 53
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->CONTACTS_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactInfoLoader;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-static {p1}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/ContactInfoLoader;->mHasContactsPermissions:Z

    .line 70
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/ContactInfoLoader;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfoLoader;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/ContactInfoLoader;Landroid/database/Cursor;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/android/calendar/timely/ContactInfoLoader;->processSingleCursorItem(Landroid/database/Cursor;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private loadSingleByEmail(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/android/calendar/timely/ContactInfoLoader;->mHasContactsPermissions:Z

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->TAG:Ljava/lang/String;

    const-string v1, "No contacts permission granted.  Cannot lookup contact by email."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 172
    :cond_0
    :goto_0
    return-object p1

    .line 158
    :cond_1
    iget-object v6, p1, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    .line 159
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 162
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 164
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfoLoader;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/calendar/timely/ContactInfoLoader;->CONTACTS_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v5, "photo_id DESC LIMIT 1"

    move-object v4, v3

    .line 165
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 168
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 169
    :cond_2
    sget-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->TAG:Ljava/lang/String;

    const-string v1, "No contact found for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    if-eqz v7, :cond_0

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 172
    :cond_3
    :try_start_1
    new-instance v2, Lcom/android/calendar/timely/ContactInfoLoader$2;

    invoke-direct {v2, p0, p1}, Lcom/android/calendar/timely/ContactInfoLoader$2;-><init>(Lcom/android/calendar/timely/ContactInfoLoader;Lcom/android/calendar/timely/ContactInfo;)V

    const-string v4, "Failed to load contact for %s"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/ContactInfoLoader;->processSingleCursorItem(Landroid/database/Cursor;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v7, :cond_4

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object p1, v0

    .line 172
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private loadSingleByFocusId(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 93
    iget-boolean v0, p0, Lcom/android/calendar/timely/ContactInfoLoader;->mHasContactsPermissions:Z

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->TAG:Ljava/lang/String;

    const-string v1, "No contacts permission granted.  Cannot lookup contact by focus id."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    :goto_0
    return-object p1

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfoLoader;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/calendar/timely/ContactInfoLoader;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "sourceid=? AND deleted=0"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    .line 102
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 104
    :try_start_0
    new-instance v2, Lcom/android/calendar/timely/ContactInfoLoader$1;

    invoke-direct {v2, p0, p1}, Lcom/android/calendar/timely/ContactInfoLoader$1;-><init>(Lcom/android/calendar/timely/ContactInfoLoader;Lcom/android/calendar/timely/ContactInfo;)V

    const-string v4, "Failed to find contact by Focus ID for %s"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/ContactInfoLoader;->processSingleCursorItem(Landroid/database/Cursor;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ContactInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object p1, v0

    .line 104
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private varargs processSingleCursorItem(Landroid/database/Cursor;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/google/common/base/Function",
            "<",
            "Landroid/database/Cursor;",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 143
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "Expecting a single row"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 144
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 146
    invoke-interface {p2, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 149
    :goto_1
    return-object p3

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/android/calendar/timely/ContactInfoLoader;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p4, p5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public load(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p1, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/ContactInfoLoader;->loadSingleByFocusId(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object p1

    .line 88
    :goto_0
    return-object p1

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/ContactInfoLoader;->loadSingleByEmail(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/ContactInfoLoader;->TAG:Ljava/lang/String;

    const-string v1, "Not enough information to load %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public loadFully(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ContactInfo;

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/ContactInfoLoader;->load(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method
