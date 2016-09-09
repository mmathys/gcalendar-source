.class public Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;
.super Ljava/lang/Object;
.source "FindTimeClientFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/net/FindTimeClientFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Data"
.end annotation


# instance fields
.field public final acceptableSuggestions:I

.field public final consideredAttendees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final omittedAttendees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;"
        }
    .end annotation
.end field

.field public final responseId:Ljava/lang/String;

.field public final suggestions:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->suggestions:Lcom/google/common/collect/ImmutableList;

    .line 48
    iput-object p2, p0, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->consideredAttendees:Lcom/google/common/collect/ImmutableList;

    .line 49
    iput p4, p0, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->acceptableSuggestions:I

    .line 50
    iput-object p3, p0, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->omittedAttendees:Lcom/google/common/collect/ImmutableList;

    .line 51
    iput-object p5, p0, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->responseId:Ljava/lang/String;

    .line 52
    return-void
.end method
