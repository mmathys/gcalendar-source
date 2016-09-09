.class Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
.super Ljava/lang/Object;
.source "TimeZoneFilterTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterTypeResult"
.end annotation


# instance fields
.field constraint:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

.field public time:I

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->type:I

    .line 69
    iput-object p3, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    .line 70
    iput p4, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->time:I

    .line 71
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    return-object v0
.end method
