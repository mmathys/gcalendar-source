.class public Lcom/android/calendar/event/EditHelper$AttendeeItem;
.super Ljava/lang/Object;
.source "EditHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttendeeItem"
.end annotation


# instance fields
.field public mAttendee:Lcom/android/calendar/event/CalendarEventModel$Attendee;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/calendar/event/EditHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 161
    return-void
.end method
