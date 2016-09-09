.class public Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UndoRecord"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final previousSelectedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

.field final previousTextField:Landroid/text/SpannedString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1061
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord$1;

    invoke-direct {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    new-instance v0, Landroid/text/SpannedString;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousTextField:Landroid/text/SpannedString;

    .line 1056
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1057
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->fromParcelable(Landroid/os/Parcelable;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousSelectedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 1059
    return-void
.end method

.method public constructor <init>(Landroid/text/SpannedString;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousTextField:Landroid/text/SpannedString;

    .line 1051
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousSelectedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 1052
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousTextField:Landroid/text/SpannedString;

    invoke-virtual {v0}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousSelectedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 1082
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->toParcelable(Lcom/google/protobuf/nano/MessageNano;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    .line 1081
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1083
    return-void
.end method
