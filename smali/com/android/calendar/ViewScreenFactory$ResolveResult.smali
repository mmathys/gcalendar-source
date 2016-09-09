.class Lcom/android/calendar/ViewScreenFactory$ResolveResult;
.super Ljava/lang/Object;
.source "ViewScreenFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ViewScreenFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveResult"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field calendarId:Ljava/lang/String;

.field grooveId:Ljava/lang/String;

.field model:Lcom/android/calendar/event/CalendarEventModel;

.field selfAttendeeStatus:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ViewScreenFactory$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/calendar/ViewScreenFactory$ResolveResult;-><init>()V

    return-void
.end method
