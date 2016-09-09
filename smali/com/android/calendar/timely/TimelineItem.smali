.class public interface abstract Lcom/android/calendar/timely/TimelineItem;
.super Ljava/lang/Object;
.source "TimelineItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/android/calendar/timely/TimelineItem$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineItem$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineItem;->ItemComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getCalendarId()I
.end method

.method public abstract getColor()I
.end method

.method public abstract getEndDay()I
.end method

.method public abstract getEndMillis()J
.end method

.method public abstract getEndTime()I
.end method

.method public abstract getId()Ljava/lang/Object;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getInfoUri()Landroid/net/Uri;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getOrganizer()Ljava/lang/String;
.end method

.method public abstract getSelfAttendeeStatus()I
.end method

.method public abstract getSortId()J
.end method

.method public abstract getSortType()I
.end method

.method public abstract getStartDay()I
.end method

.method public abstract getStartMillis()J
.end method

.method public abstract getStartTime()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleAndLocation()Ljava/lang/String;
.end method

.method public abstract gotoAssist(Landroid/content/Context;)V
.end method

.method public abstract hasAssist()Z
.end method

.method public abstract hasDeclinedStatus()Z
.end method

.method public abstract hasHeadlineImage()Z
.end method

.method public abstract hasImage()Z
.end method

.method public abstract hasInvitedStatus()Z
.end method

.method public abstract isAllDay()Z
.end method

.method public abstract isTransparent()Z
.end method

.method public abstract shouldShowOrganizerImage()Z
.end method

.method public abstract showEndTime()Z
.end method

.method public abstract spansAtLeastOneDay()Z
.end method

.method public abstract supportsSwipe()Z
.end method
