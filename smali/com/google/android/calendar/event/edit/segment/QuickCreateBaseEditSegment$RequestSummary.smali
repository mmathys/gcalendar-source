.class Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestSummary"
.end annotation


# instance fields
.field final text:Ljava/lang/String;

.field final token:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;->token:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    .line 1092
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;->text:Ljava/lang/String;

    .line 1093
    return-void
.end method
