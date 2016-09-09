.class Lcom/android/calendar/timely/CalendarMonthView$1;
.super Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;
.source "CalendarMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/CalendarMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/CalendarMonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/CalendarMonthView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/calendar/timely/CalendarMonthView$1;->this$0:Lcom/android/calendar/timely/CalendarMonthView;

    invoke-direct {p0, p1}, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;-><init>(Lcom/android/calendar/timely/CalendarMonthView;)V

    return-void
.end method


# virtual methods
.method public getListenerTagType()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method
