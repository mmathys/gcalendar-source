.class public Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;
.super Ljava/lang/Object;
.source "FindTimeAttendee.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeAttendee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequesterFirstComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/timely/FindTimeAttendee;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;->mEmail:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private absoluteRank(Lcom/android/calendar/timely/FindTimeAttendee;)I
    .locals 2

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;->mEmail:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/FindTimeAttendee;Lcom/android/calendar/timely/FindTimeAttendee;)I
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;->absoluteRank(Lcom/android/calendar/timely/FindTimeAttendee;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;->absoluteRank(Lcom/android/calendar/timely/FindTimeAttendee;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/android/calendar/timely/FindTimeAttendee;

    check-cast p2, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;->compare(Lcom/android/calendar/timely/FindTimeAttendee;Lcom/android/calendar/timely/FindTimeAttendee;)I

    move-result v0

    return v0
.end method
