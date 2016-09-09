.class final Lcom/android/calendar/timely/TimelineSuggestion$1;
.super Ljava/lang/Object;
.source "TimelineSuggestion.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAttendeeName(Lcom/android/calendar/timely/FindTimeAttendee;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/FindTimeAttendee;Lcom/android/calendar/timely/FindTimeAttendee;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeAttendee;->isOrganizer()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/android/calendar/timely/FindTimeAttendee;->isOrganizer()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 24
    :goto_1
    add-int v4, v0, v3

    if-ne v4, v1, :cond_2

    .line 25
    sub-int v0, v3, v0

    .line 34
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 22
    goto :goto_0

    :cond_1
    move v3, v2

    .line 23
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeAttendee;->isRoom()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 29
    :goto_3
    invoke-virtual {p2}, Lcom/android/calendar/timely/FindTimeAttendee;->isRoom()Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v1

    .line 30
    :cond_3
    add-int v3, v0, v2

    if-ne v3, v1, :cond_5

    .line 31
    sub-int/2addr v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    .line 28
    goto :goto_3

    .line 34
    :cond_5
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineSuggestion$1;->getAttendeeName(Lcom/android/calendar/timely/FindTimeAttendee;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/calendar/timely/TimelineSuggestion$1;->getAttendeeName(Lcom/android/calendar/timely/FindTimeAttendee;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/android/calendar/timely/FindTimeAttendee;

    check-cast p2, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/TimelineSuggestion$1;->compare(Lcom/android/calendar/timely/FindTimeAttendee;Lcom/android/calendar/timely/FindTimeAttendee;)I

    move-result v0

    return v0
.end method
