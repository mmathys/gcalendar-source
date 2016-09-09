.class Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;
.super Ljava/lang/Object;
.source "TimePickerCompat.java"

# interfaces
.implements Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/TimePickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LibraryTimeSetListenerWrapper"
.end annotation


# instance fields
.field private mWrappee:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;->mWrappee:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    .line 153
    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;->mWrappee:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-interface {v0, p2, p3}, Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;->onTimeSet(II)V

    .line 158
    return-void
.end method
