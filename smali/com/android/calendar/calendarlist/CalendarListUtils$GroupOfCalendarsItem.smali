.class public Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;
.super Ljava/lang/Object;
.source "CalendarListUtils.java"

# interfaces
.implements Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/CalendarListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupOfCalendarsItem"
.end annotation


# instance fields
.field public areVisible:Z

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

.field public final mOrder:I

.field public final mType:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput p2, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->mType:I

    .line 575
    iput p1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->mOrder:I

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->calendars:Ljava/util/ArrayList;

    .line 578
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/calendar/calendarlist/CalendarListUtils$1;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->mOrder:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->mType:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x2

    return v0
.end method
