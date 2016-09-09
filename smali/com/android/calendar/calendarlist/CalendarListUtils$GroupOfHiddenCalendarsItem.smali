.class public Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;
.super Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;
.source "CalendarListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/CalendarListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupOfHiddenCalendarsItem"
.end annotation


# instance fields
.field public final calendars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;-><init>()V

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->calendars:Ljava/util/ArrayList;

    .line 475
    iput-object p1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->account:Landroid/accounts/Account;

    .line 476
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->priority:I

    .line 477
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x5

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x2

    return v0
.end method
