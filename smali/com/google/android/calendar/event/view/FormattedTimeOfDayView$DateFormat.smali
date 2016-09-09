.class public final enum Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;
.super Ljava/lang/Enum;
.source "FormattedTimeOfDayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DateFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

.field public static final enum ShowTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

.field public static final enum ShowWeekdayDate:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

.field public static final enum ShowWeekdayDateTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    const-string v1, "ShowWeekdayDateTime"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowWeekdayDateTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    .line 43
    new-instance v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    const-string v1, "ShowWeekdayDate"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowWeekdayDate:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    .line 45
    new-instance v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    const-string v1, "ShowTime"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    sget-object v1, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowWeekdayDateTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowWeekdayDate:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->$VALUES:[Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->mFlags:I

    .line 54
    return-void
.end method

.method public static values()[Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->$VALUES:[Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    invoke-virtual {v0}, [Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    return-object v0
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->mFlags:I

    return v0
.end method
