.class public Lcom/google/android/calendar/extensions/BirthdayManager;
.super Ljava/lang/Object;
.source "BirthdayManager.java"

# interfaces
.implements Lcom/android/calendar/BirthdayManagerInterface;


# static fields
.field private static final ACCOUNT_SETTING_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBirthdayItemCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;",
            "Lcom/android/calendar/timely/TimelineBirthday;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "settingBirthdayVisibility"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "settingBirthdayIncludeGplus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/extensions/BirthdayManager;->ACCOUNT_SETTING_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/extensions/BirthdayManager;->mBirthdayItemCache:Ljava/util/Map;

    return-void
.end method

.method private fetchAndPopulateBirthdayItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 17

    .prologue
    .line 187
    invoke-static/range {p1 .. p2}, Lcom/google/android/calendar/extensions/BirthdayManager;->getTimelyEventDataList(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)Ljava/util/List;

    move-result-object v9

    .line 190
    const/4 v8, 0x0

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->happy_birthday:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 196
    const/4 v6, 0x0

    .line 197
    const/4 v5, 0x0

    .line 198
    const/4 v4, 0x0

    .line 200
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayInfoList()Ljava/util/List;

    move-result-object v13

    .line 207
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_6

    .line 209
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 210
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 211
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getEventGadget()Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_4

    .line 213
    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/Event$Gadget;->getPreferences()Ljava/util/Map;

    move-result-object v14

    .line 214
    const-string v3, "goo.contactsEventType"

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    const-string v15, "BIRTHDAY"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 216
    const-string v3, "goo.contactsFullName"

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    .line 217
    const-string v3, "goo.contactsEmail"

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    .line 219
    const-string v3, "true"

    const-string v15, "goo.isGPlusUser"

    .line 220
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 219
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isGPlusUser:Z

    .line 221
    const-string v3, "goo.contactsContactId"

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->contactId:Ljava/lang/String;

    .line 222
    const-string v3, "goo.contactsProfileId"

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->profileId:Ljava/lang/String;

    .line 223
    const-string v3, "goo.contactsPhotoUrl"

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->photoURL:Ljava/lang/String;

    .line 207
    :goto_1
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 224
    :cond_0
    const-string v14, "SELF"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->selfBirthday:Z

    .line 226
    iget v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getCalendarOwnerAccount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    .line 228
    iget-object v14, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    .line 230
    iput-object v10, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->originalTitle:Ljava/lang/String;

    iput-object v10, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    .line 232
    if-nez v14, :cond_1

    .line 233
    if-nez v4, :cond_11

    .line 235
    const-string v3, ""

    iput-object v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    move-object v3, v5

    move-object v4, v6

    :goto_2
    move-object v5, v3

    move-object v6, v4

    move-object v4, v2

    .line 248
    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 240
    if-nez v6, :cond_2

    const/4 v3, 0x0

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/google/android/calendar/extensions/BirthdayManager;->getAccountWithPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v2, v5

    .line 246
    :goto_3
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_2

    .line 243
    :cond_2
    if-nez v5, :cond_10

    move-object v3, v6

    .line 244
    goto :goto_3

    .line 249
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    .line 250
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    .line 254
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    .line 258
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_6
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v8

    .line 268
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 269
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 270
    iget-boolean v8, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    if-eqz v8, :cond_8

    iget-boolean v8, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->selfBirthday:Z

    if-nez v8, :cond_8

    .line 271
    iget-object v2, v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 273
    invoke-virtual {v12, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 275
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    move-object v2, v3

    :goto_5
    move-object v3, v2

    .line 285
    goto :goto_4

    .line 278
    :cond_7
    invoke-virtual {v12, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/calendar/extensions/BirthdayManager;->getAccountWithPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 283
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :cond_9
    move-object v2, v3

    goto :goto_5

    .line 288
    :cond_a
    if-eqz v6, :cond_c

    .line 289
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v2, v6, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/calendar/extensions/BirthdayManager;->getAccountWithPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    :cond_b
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 299
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 291
    :cond_c
    if-eqz v5, :cond_d

    .line 292
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 293
    :cond_d
    if-eqz v4, :cond_b

    .line 294
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 302
    :cond_e
    if-eqz v3, :cond_f

    .line 304
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/TimelineBirthday;->setMainAccountEmail(Ljava/lang/String;)V

    .line 306
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/timely/TimelineBirthday;->finishLoad()V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/extensions/BirthdayManager;->mBirthdayItemCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayCalendarEventIds()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void

    :cond_10
    move-object v2, v5

    move-object v3, v6

    goto/16 :goto_3

    :cond_11
    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_2
.end method

.method private getAccountWithPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-static {}, Lcom/android/calendar/timely/ContactInfo;->newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/timely/ContactInfo$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/android/calendar/timely/ContactInfoLoader;

    invoke-direct {v1, p1}, Lcom/android/calendar/timely/ContactInfoLoader;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/ContactInfoLoader;->load(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v1

    .line 343
    if-eq v0, v1, :cond_0

    .line 345
    :goto_0
    return-object p3

    .line 343
    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    move-object p3, p2

    .line 345
    goto :goto_0
.end method

.method public static getBirthdayHolidayPrimaryAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 55
    array-length v1, v0

    if-lez v1, :cond_0

    .line 56
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTimelyEventDataList(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/calendar/timely/TimelineBirthday;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 174
    iget-wide v6, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget v0, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getTimelyEventDataList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static processSettingsCursor(Landroid/database/Cursor;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 93
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "accountName"

    .line 95
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 96
    const-string v0, "settingBirthdayVisibility"

    .line 97
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 98
    const-string v0, "settingBirthdayIncludeGplus"

    .line 99
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 101
    :cond_0
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    .line 103
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 104
    :goto_0
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-direct {v8, v0, v3}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(ZZ)V

    .line 101
    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 103
    goto :goto_0

    :cond_3
    move v3, v2

    .line 104
    goto :goto_1
.end method

.method private restoreBirthdayItemFromCache(Lcom/android/calendar/timely/TimelineBirthday;)Z
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayCalendarEventIds()Ljava/util/Set;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/google/android/calendar/extensions/BirthdayManager;->mBirthdayItemCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    .line 320
    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    .line 324
    :cond_0
    if-eq v0, p1, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 326
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getOrganizer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/TimelineBirthday;->setMainAccountEmail(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->finishLoad()V

    .line 330
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBirthdaySettingsLoader(Landroid/content/Context;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 64
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/calendar/extensions/BirthdayManager;->ACCOUNT_SETTING_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPrimaryBirthdayCalendar(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;
    .locals 12

    .prologue
    const/4 v0, 0x1

    .line 354
    invoke-static {p1}, Lcom/google/android/calendar/extensions/BirthdayManager;->getBirthdayHolidayPrimaryAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 357
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 358
    const-string v3, "calendar_displayName"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 360
    const-string v4, "calendar_color"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 362
    const-string v5, "account_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 364
    const-string v6, "ownerAccount"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 366
    const-string v7, "account_type"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 368
    const-string v8, "sync_events"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 371
    const/4 v9, -0x1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 372
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 374
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isBirthdayCalendar(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 375
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 379
    new-instance v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    invoke-direct {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;-><init>()V

    .line 381
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 382
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    .line 383
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 385
    iput-boolean v0, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    .line 386
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    .line 387
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    .line 388
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    .line 389
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    .line 390
    new-instance v0, Landroid/accounts/Account;

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    move-object v0, v1

    .line 397
    :goto_1
    return-object v0

    .line 388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initBirthdayItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0, p2}, Lcom/google/android/calendar/extensions/BirthdayManager;->restoreBirthdayItemFromCache(Lcom/android/calendar/timely/TimelineBirthday;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/extensions/BirthdayManager;->fetchAndPopulateBirthdayItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V

    goto :goto_0
.end method

.method public initBirthdayItemAsync(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/BirthdayManagerInterface$Callback;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/google/android/calendar/extensions/BirthdayManager;->restoreBirthdayItemFromCache(Lcom/android/calendar/timely/TimelineBirthday;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    if-eqz p3, :cond_0

    .line 114
    invoke-interface {p3, p2}, Lcom/android/calendar/BirthdayManagerInterface$Callback;->onBirthdayItemLoaded(Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Lcom/google/android/calendar/extensions/BirthdayManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/calendar/extensions/BirthdayManager$1;-><init>(Lcom/google/android/calendar/extensions/BirthdayManager;Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/BirthdayManagerInterface$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/extensions/BirthdayManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public processCursor(Landroid/database/Cursor;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 71
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "accountName"

    .line 73
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 74
    const-string v0, "settingBirthdayVisibility"

    .line 75
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 77
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :cond_1
    return-void

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreBirthdayItemsFromCache(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/extensions/BirthdayManager;->restoreBirthdayItemFromCache(Lcom/android/calendar/timely/TimelineBirthday;)Z

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public updateTitle(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-virtual {p2}, Lcom/android/calendar/timely/TimelineBirthday;->getNames()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/calendar/timely/TimelineBirthday;->setTitle(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Lcom/android/calendar/timely/TimelineBirthday;->getCountOfBirthdays()I

    move-result v1

    .line 146
    invoke-virtual {p2}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 147
    sget v2, Lcom/android/calendar/R$plurals;->birthday_chip_title:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 147
    invoke-virtual {p1, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p2, v2}, Lcom/android/calendar/timely/TimelineBirthday;->setSubtitle(Ljava/lang/String;)V

    .line 150
    if-le v1, v6, :cond_0

    .line 151
    invoke-virtual {p2, v2}, Lcom/android/calendar/timely/TimelineBirthday;->setSingleLineTitle(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->originalTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/calendar/timely/TimelineBirthday;->setSingleLineTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
