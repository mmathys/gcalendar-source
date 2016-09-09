.class Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseSummary"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

.field final suggestionText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1115
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary$1;

    invoke-direct {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->suggestionText:Ljava/lang/String;

    .line 1111
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    .line 1112
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1111
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->fromParcelable(Landroid/os/Parcelable;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    .line 1113
    return-void
.end method

.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/EventInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    .line 1106
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->suggestionText:Ljava/lang/String;

    .line 1107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1129
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->suggestionText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->toParcelable(Lcom/google/protobuf/nano/MessageNano;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1136
    return-void
.end method
