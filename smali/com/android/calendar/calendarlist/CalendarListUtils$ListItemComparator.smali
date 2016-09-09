.class public Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;
.super Ljava/lang/Object;
.source "CalendarListUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/CalendarListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountsWithDeviceOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/accounts/Account;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v2, Ljava/util/HashMap;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;->mAccountsWithDeviceOrder:Ljava/util/Map;

    .line 337
    if-eqz p1, :cond_1

    .line 338
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;->mAccountsWithDeviceOrder:Ljava/util/Map;

    aget-object v2, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    :cond_0
    array-length v0, p1

    goto :goto_0

    .line 342
    :cond_1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 347
    invoke-interface {p1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getOrder()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    .line 348
    if-eqz v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    check-cast p1, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    .line 354
    check-cast p2, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    .line 358
    iget-object v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    iget-object v1, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 359
    const-string v0, "com.google"

    iget-object v1, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    const-string v1, "com.google"

    iget-object v5, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 362
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 363
    if-eq v0, v1, :cond_3

    .line 364
    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;->mAccountsWithDeviceOrder:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 370
    iget-object v1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;->mAccountsWithDeviceOrder:Ljava/util/Map;

    iget-object v5, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 372
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 373
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 378
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_8

    .line 379
    :cond_5
    if-eqz v0, :cond_6

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    move v2, v4

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_1

    .line 383
    :cond_8
    invoke-virtual {p1}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p2}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 388
    :cond_9
    iget v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->priority:I

    iget v1, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->priority:I

    sub-int/2addr v0, v1

    .line 389
    if-nez v0, :cond_0

    .line 393
    instance-of v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    if-eqz v0, :cond_a

    move v0, v3

    .line 394
    :goto_2
    instance-of v1, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    if-eqz v1, :cond_b

    .line 395
    :goto_3
    sub-int/2addr v0, v3

    .line 396
    if-nez v0, :cond_0

    .line 400
    instance-of v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    if-eqz v0, :cond_c

    .line 401
    check-cast p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 402
    check-cast p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 403
    iget-object v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    move v0, v4

    .line 394
    goto :goto_2

    :cond_b
    move v3, v4

    .line 395
    goto :goto_3

    :cond_c
    move v0, v4

    .line 406
    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 330
    check-cast p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    check-cast p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;->compare(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;)I

    move-result v0

    return v0
.end method
