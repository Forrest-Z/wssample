// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: TrackPoints.proto

#include "TrackPoints.pb.h"

#include <algorithm>

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/wire_format_lite.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>
extern PROTOBUF_INTERNAL_EXPORT_TrackPoints_2eproto ::PROTOBUF_NAMESPACE_ID::internal::SCCInfo<0> scc_info_Point_TrackPoints_2eproto;
namespace TrackPoints {
class PointDefaultTypeInternal {
 public:
  ::PROTOBUF_NAMESPACE_ID::internal::ExplicitlyConstructed<Point> _instance;
} _Point_default_instance_;
class TrackDefaultTypeInternal {
 public:
  ::PROTOBUF_NAMESPACE_ID::internal::ExplicitlyConstructed<Track> _instance;
} _Track_default_instance_;
}  // namespace TrackPoints
static void InitDefaultsscc_info_Point_TrackPoints_2eproto() {
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  {
    void* ptr = &::TrackPoints::_Point_default_instance_;
    new (ptr) ::TrackPoints::Point();
    ::PROTOBUF_NAMESPACE_ID::internal::OnShutdownDestroyMessage(ptr);
  }
  ::TrackPoints::Point::InitAsDefaultInstance();
}

::PROTOBUF_NAMESPACE_ID::internal::SCCInfo<0> scc_info_Point_TrackPoints_2eproto =
    {{ATOMIC_VAR_INIT(::PROTOBUF_NAMESPACE_ID::internal::SCCInfoBase::kUninitialized), 0, 0, InitDefaultsscc_info_Point_TrackPoints_2eproto}, {}};

static void InitDefaultsscc_info_Track_TrackPoints_2eproto() {
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  {
    void* ptr = &::TrackPoints::_Track_default_instance_;
    new (ptr) ::TrackPoints::Track();
    ::PROTOBUF_NAMESPACE_ID::internal::OnShutdownDestroyMessage(ptr);
  }
  ::TrackPoints::Track::InitAsDefaultInstance();
}

::PROTOBUF_NAMESPACE_ID::internal::SCCInfo<1> scc_info_Track_TrackPoints_2eproto =
    {{ATOMIC_VAR_INIT(::PROTOBUF_NAMESPACE_ID::internal::SCCInfoBase::kUninitialized), 1, 0, InitDefaultsscc_info_Track_TrackPoints_2eproto}, {
      &scc_info_Point_TrackPoints_2eproto.base,}};

static ::PROTOBUF_NAMESPACE_ID::Metadata file_level_metadata_TrackPoints_2eproto[2];
static constexpr ::PROTOBUF_NAMESPACE_ID::EnumDescriptor const** file_level_enum_descriptors_TrackPoints_2eproto = nullptr;
static constexpr ::PROTOBUF_NAMESPACE_ID::ServiceDescriptor const** file_level_service_descriptors_TrackPoints_2eproto = nullptr;

const ::PROTOBUF_NAMESPACE_ID::uint32 TableStruct_TrackPoints_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  ~0u,  // no _has_bits_
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, x_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, y_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, z_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, yaw_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, kalman_vx_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, accel_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, kalman_yawrate_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, steer_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, throttle_pedal_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, xbr_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, gear_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, this_to_last_dis_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, left_light_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, right_light_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Point, air_beep_),
  ~0u,  // no _has_bits_
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Track, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Track, coord_type_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Track, track_points_count_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Track, track_dis_),
  PROTOBUF_FIELD_OFFSET(::TrackPoints::Track, pt_),
};
static const ::PROTOBUF_NAMESPACE_ID::internal::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, -1, sizeof(::TrackPoints::Point)},
  { 20, -1, sizeof(::TrackPoints::Track)},
};

static ::PROTOBUF_NAMESPACE_ID::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::PROTOBUF_NAMESPACE_ID::Message*>(&::TrackPoints::_Point_default_instance_),
  reinterpret_cast<const ::PROTOBUF_NAMESPACE_ID::Message*>(&::TrackPoints::_Track_default_instance_),
};

const char descriptor_table_protodef_TrackPoints_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\021TrackPoints.proto\022\013TrackPoints\"\206\002\n\005Poi"
  "nt\022\t\n\001x\030\001 \001(\002\022\t\n\001y\030\002 \001(\002\022\t\n\001z\030\003 \001(\002\022\013\n\003y"
  "aw\030\004 \001(\002\022\021\n\tkalman_vx\030\005 \001(\002\022\r\n\005accel\030\006 \001"
  "(\002\022\026\n\016kalman_yawrate\030\007 \001(\002\022\r\n\005steer\030\010 \001("
  "\002\022\026\n\016throttle_pedal\030\t \001(\005\022\013\n\003xbr\030\n \001(\002\022\014"
  "\n\004gear\030\013 \001(\005\022\030\n\020this_to_last_dis\030\014 \001(\002\022\022"
  "\n\nleft_light\030\r \001(\005\022\023\n\013right_light\030\016 \001(\005\022"
  "\020\n\010air_beep\030\017 \001(\005\"j\n\005Track\022\022\n\ncoord_type"
  "\030\001 \001(\t\022\032\n\022track_points_count\030\002 \001(\005\022\021\n\ttr"
  "ack_dis\030\003 \001(\002\022\036\n\002pt\030\004 \003(\0132\022.TrackPoints."
  "Pointb\006proto3"
  ;
static const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable*const descriptor_table_TrackPoints_2eproto_deps[1] = {
};
static ::PROTOBUF_NAMESPACE_ID::internal::SCCInfoBase*const descriptor_table_TrackPoints_2eproto_sccs[2] = {
  &scc_info_Point_TrackPoints_2eproto.base,
  &scc_info_Track_TrackPoints_2eproto.base,
};
static ::PROTOBUF_NAMESPACE_ID::internal::once_flag descriptor_table_TrackPoints_2eproto_once;
static bool descriptor_table_TrackPoints_2eproto_initialized = false;
const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_TrackPoints_2eproto = {
  &descriptor_table_TrackPoints_2eproto_initialized, descriptor_table_protodef_TrackPoints_2eproto, "TrackPoints.proto", 413,
  &descriptor_table_TrackPoints_2eproto_once, descriptor_table_TrackPoints_2eproto_sccs, descriptor_table_TrackPoints_2eproto_deps, 2, 0,
  schemas, file_default_instances, TableStruct_TrackPoints_2eproto::offsets,
  file_level_metadata_TrackPoints_2eproto, 2, file_level_enum_descriptors_TrackPoints_2eproto, file_level_service_descriptors_TrackPoints_2eproto,
};

// Force running AddDescriptors() at dynamic initialization time.
static bool dynamic_init_dummy_TrackPoints_2eproto = (  ::PROTOBUF_NAMESPACE_ID::internal::AddDescriptors(&descriptor_table_TrackPoints_2eproto), true);
namespace TrackPoints {

// ===================================================================

void Point::InitAsDefaultInstance() {
}
class Point::_Internal {
 public:
};

Point::Point()
  : ::PROTOBUF_NAMESPACE_ID::Message(), _internal_metadata_(nullptr) {
  SharedCtor();
  // @@protoc_insertion_point(constructor:TrackPoints.Point)
}
Point::Point(const Point& from)
  : ::PROTOBUF_NAMESPACE_ID::Message(),
      _internal_metadata_(nullptr) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::memcpy(&x_, &from.x_,
    static_cast<size_t>(reinterpret_cast<char*>(&air_beep_) -
    reinterpret_cast<char*>(&x_)) + sizeof(air_beep_));
  // @@protoc_insertion_point(copy_constructor:TrackPoints.Point)
}

void Point::SharedCtor() {
  ::memset(&x_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&air_beep_) -
      reinterpret_cast<char*>(&x_)) + sizeof(air_beep_));
}

Point::~Point() {
  // @@protoc_insertion_point(destructor:TrackPoints.Point)
  SharedDtor();
}

void Point::SharedDtor() {
}

void Point::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const Point& Point::default_instance() {
  ::PROTOBUF_NAMESPACE_ID::internal::InitSCC(&::scc_info_Point_TrackPoints_2eproto.base);
  return *internal_default_instance();
}


void Point::Clear() {
// @@protoc_insertion_point(message_clear_start:TrackPoints.Point)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  ::memset(&x_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&air_beep_) -
      reinterpret_cast<char*>(&x_)) + sizeof(air_beep_));
  _internal_metadata_.Clear();
}

const char* Point::_InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  while (!ctx->Done(&ptr)) {
    ::PROTOBUF_NAMESPACE_ID::uint32 tag;
    ptr = ::PROTOBUF_NAMESPACE_ID::internal::ReadTag(ptr, &tag);
    CHK_(ptr);
    switch (tag >> 3) {
      // float x = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 13)) {
          x_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // float y = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 21)) {
          y_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // float z = 3;
      case 3:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 29)) {
          z_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // float yaw = 4;
      case 4:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 37)) {
          yaw_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // float kalman_vx = 5;
      case 5:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 45)) {
          kalman_vx_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // float accel = 6;
      case 6:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 53)) {
          accel_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // float kalman_yawrate = 7;
      case 7:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 61)) {
          kalman_yawrate_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // float steer = 8;
      case 8:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 69)) {
          steer_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // int32 throttle_pedal = 9;
      case 9:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 72)) {
          throttle_pedal_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // float xbr = 10;
      case 10:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 85)) {
          xbr_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // int32 gear = 11;
      case 11:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 88)) {
          gear_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // float this_to_last_dis = 12;
      case 12:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 101)) {
          this_to_last_dis_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // int32 left_light = 13;
      case 13:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 104)) {
          left_light_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // int32 right_light = 14;
      case 14:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 112)) {
          right_light_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // int32 air_beep = 15;
      case 15:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 120)) {
          air_beep_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      default: {
      handle_unusual:
        if ((tag & 7) == 4 || tag == 0) {
          ctx->SetLastTag(tag);
          goto success;
        }
        ptr = UnknownFieldParse(tag, &_internal_metadata_, ptr, ctx);
        CHK_(ptr != nullptr);
        continue;
      }
    }  // switch
  }  // while
success:
  return ptr;
failure:
  ptr = nullptr;
  goto success;
#undef CHK_
}

::PROTOBUF_NAMESPACE_ID::uint8* Point::InternalSerializeWithCachedSizesToArray(
    ::PROTOBUF_NAMESPACE_ID::uint8* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:TrackPoints.Point)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // float x = 1;
  if (!(this->x() <= 0 && this->x() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(1, this->_internal_x(), target);
  }

  // float y = 2;
  if (!(this->y() <= 0 && this->y() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(2, this->_internal_y(), target);
  }

  // float z = 3;
  if (!(this->z() <= 0 && this->z() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(3, this->_internal_z(), target);
  }

  // float yaw = 4;
  if (!(this->yaw() <= 0 && this->yaw() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(4, this->_internal_yaw(), target);
  }

  // float kalman_vx = 5;
  if (!(this->kalman_vx() <= 0 && this->kalman_vx() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(5, this->_internal_kalman_vx(), target);
  }

  // float accel = 6;
  if (!(this->accel() <= 0 && this->accel() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(6, this->_internal_accel(), target);
  }

  // float kalman_yawrate = 7;
  if (!(this->kalman_yawrate() <= 0 && this->kalman_yawrate() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(7, this->_internal_kalman_yawrate(), target);
  }

  // float steer = 8;
  if (!(this->steer() <= 0 && this->steer() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(8, this->_internal_steer(), target);
  }

  // int32 throttle_pedal = 9;
  if (this->throttle_pedal() != 0) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteInt32ToArray(9, this->_internal_throttle_pedal(), target);
  }

  // float xbr = 10;
  if (!(this->xbr() <= 0 && this->xbr() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(10, this->_internal_xbr(), target);
  }

  // int32 gear = 11;
  if (this->gear() != 0) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteInt32ToArray(11, this->_internal_gear(), target);
  }

  // float this_to_last_dis = 12;
  if (!(this->this_to_last_dis() <= 0 && this->this_to_last_dis() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(12, this->_internal_this_to_last_dis(), target);
  }

  // int32 left_light = 13;
  if (this->left_light() != 0) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteInt32ToArray(13, this->_internal_left_light(), target);
  }

  // int32 right_light = 14;
  if (this->right_light() != 0) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteInt32ToArray(14, this->_internal_right_light(), target);
  }

  // int32 air_beep = 15;
  if (this->air_beep() != 0) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteInt32ToArray(15, this->_internal_air_beep(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields(), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:TrackPoints.Point)
  return target;
}

size_t Point::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:TrackPoints.Point)
  size_t total_size = 0;

  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // float x = 1;
  if (!(this->x() <= 0 && this->x() >= 0)) {
    total_size += 1 + 4;
  }

  // float y = 2;
  if (!(this->y() <= 0 && this->y() >= 0)) {
    total_size += 1 + 4;
  }

  // float z = 3;
  if (!(this->z() <= 0 && this->z() >= 0)) {
    total_size += 1 + 4;
  }

  // float yaw = 4;
  if (!(this->yaw() <= 0 && this->yaw() >= 0)) {
    total_size += 1 + 4;
  }

  // float kalman_vx = 5;
  if (!(this->kalman_vx() <= 0 && this->kalman_vx() >= 0)) {
    total_size += 1 + 4;
  }

  // float accel = 6;
  if (!(this->accel() <= 0 && this->accel() >= 0)) {
    total_size += 1 + 4;
  }

  // float kalman_yawrate = 7;
  if (!(this->kalman_yawrate() <= 0 && this->kalman_yawrate() >= 0)) {
    total_size += 1 + 4;
  }

  // float steer = 8;
  if (!(this->steer() <= 0 && this->steer() >= 0)) {
    total_size += 1 + 4;
  }

  // int32 throttle_pedal = 9;
  if (this->throttle_pedal() != 0) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::Int32Size(
        this->_internal_throttle_pedal());
  }

  // float xbr = 10;
  if (!(this->xbr() <= 0 && this->xbr() >= 0)) {
    total_size += 1 + 4;
  }

  // int32 gear = 11;
  if (this->gear() != 0) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::Int32Size(
        this->_internal_gear());
  }

  // float this_to_last_dis = 12;
  if (!(this->this_to_last_dis() <= 0 && this->this_to_last_dis() >= 0)) {
    total_size += 1 + 4;
  }

  // int32 left_light = 13;
  if (this->left_light() != 0) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::Int32Size(
        this->_internal_left_light());
  }

  // int32 right_light = 14;
  if (this->right_light() != 0) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::Int32Size(
        this->_internal_right_light());
  }

  // int32 air_beep = 15;
  if (this->air_beep() != 0) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::Int32Size(
        this->_internal_air_beep());
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    return ::PROTOBUF_NAMESPACE_ID::internal::ComputeUnknownFieldsSize(
        _internal_metadata_, total_size, &_cached_size_);
  }
  int cached_size = ::PROTOBUF_NAMESPACE_ID::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void Point::MergeFrom(const ::PROTOBUF_NAMESPACE_ID::Message& from) {
// @@protoc_insertion_point(generalized_merge_from_start:TrackPoints.Point)
  GOOGLE_DCHECK_NE(&from, this);
  const Point* source =
      ::PROTOBUF_NAMESPACE_ID::DynamicCastToGenerated<Point>(
          &from);
  if (source == nullptr) {
  // @@protoc_insertion_point(generalized_merge_from_cast_fail:TrackPoints.Point)
    ::PROTOBUF_NAMESPACE_ID::internal::ReflectionOps::Merge(from, this);
  } else {
  // @@protoc_insertion_point(generalized_merge_from_cast_success:TrackPoints.Point)
    MergeFrom(*source);
  }
}

void Point::MergeFrom(const Point& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:TrackPoints.Point)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  if (!(from.x() <= 0 && from.x() >= 0)) {
    _internal_set_x(from._internal_x());
  }
  if (!(from.y() <= 0 && from.y() >= 0)) {
    _internal_set_y(from._internal_y());
  }
  if (!(from.z() <= 0 && from.z() >= 0)) {
    _internal_set_z(from._internal_z());
  }
  if (!(from.yaw() <= 0 && from.yaw() >= 0)) {
    _internal_set_yaw(from._internal_yaw());
  }
  if (!(from.kalman_vx() <= 0 && from.kalman_vx() >= 0)) {
    _internal_set_kalman_vx(from._internal_kalman_vx());
  }
  if (!(from.accel() <= 0 && from.accel() >= 0)) {
    _internal_set_accel(from._internal_accel());
  }
  if (!(from.kalman_yawrate() <= 0 && from.kalman_yawrate() >= 0)) {
    _internal_set_kalman_yawrate(from._internal_kalman_yawrate());
  }
  if (!(from.steer() <= 0 && from.steer() >= 0)) {
    _internal_set_steer(from._internal_steer());
  }
  if (from.throttle_pedal() != 0) {
    _internal_set_throttle_pedal(from._internal_throttle_pedal());
  }
  if (!(from.xbr() <= 0 && from.xbr() >= 0)) {
    _internal_set_xbr(from._internal_xbr());
  }
  if (from.gear() != 0) {
    _internal_set_gear(from._internal_gear());
  }
  if (!(from.this_to_last_dis() <= 0 && from.this_to_last_dis() >= 0)) {
    _internal_set_this_to_last_dis(from._internal_this_to_last_dis());
  }
  if (from.left_light() != 0) {
    _internal_set_left_light(from._internal_left_light());
  }
  if (from.right_light() != 0) {
    _internal_set_right_light(from._internal_right_light());
  }
  if (from.air_beep() != 0) {
    _internal_set_air_beep(from._internal_air_beep());
  }
}

void Point::CopyFrom(const ::PROTOBUF_NAMESPACE_ID::Message& from) {
// @@protoc_insertion_point(generalized_copy_from_start:TrackPoints.Point)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void Point::CopyFrom(const Point& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:TrackPoints.Point)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool Point::IsInitialized() const {
  return true;
}

void Point::InternalSwap(Point* other) {
  using std::swap;
  _internal_metadata_.Swap(&other->_internal_metadata_);
  swap(x_, other->x_);
  swap(y_, other->y_);
  swap(z_, other->z_);
  swap(yaw_, other->yaw_);
  swap(kalman_vx_, other->kalman_vx_);
  swap(accel_, other->accel_);
  swap(kalman_yawrate_, other->kalman_yawrate_);
  swap(steer_, other->steer_);
  swap(throttle_pedal_, other->throttle_pedal_);
  swap(xbr_, other->xbr_);
  swap(gear_, other->gear_);
  swap(this_to_last_dis_, other->this_to_last_dis_);
  swap(left_light_, other->left_light_);
  swap(right_light_, other->right_light_);
  swap(air_beep_, other->air_beep_);
}

::PROTOBUF_NAMESPACE_ID::Metadata Point::GetMetadata() const {
  return GetMetadataStatic();
}


// ===================================================================

void Track::InitAsDefaultInstance() {
}
class Track::_Internal {
 public:
};

Track::Track()
  : ::PROTOBUF_NAMESPACE_ID::Message(), _internal_metadata_(nullptr) {
  SharedCtor();
  // @@protoc_insertion_point(constructor:TrackPoints.Track)
}
Track::Track(const Track& from)
  : ::PROTOBUF_NAMESPACE_ID::Message(),
      _internal_metadata_(nullptr),
      pt_(from.pt_) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  coord_type_.UnsafeSetDefault(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited());
  if (!from._internal_coord_type().empty()) {
    coord_type_.AssignWithDefault(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited(), from.coord_type_);
  }
  ::memcpy(&track_points_count_, &from.track_points_count_,
    static_cast<size_t>(reinterpret_cast<char*>(&track_dis_) -
    reinterpret_cast<char*>(&track_points_count_)) + sizeof(track_dis_));
  // @@protoc_insertion_point(copy_constructor:TrackPoints.Track)
}

void Track::SharedCtor() {
  ::PROTOBUF_NAMESPACE_ID::internal::InitSCC(&scc_info_Track_TrackPoints_2eproto.base);
  coord_type_.UnsafeSetDefault(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited());
  ::memset(&track_points_count_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&track_dis_) -
      reinterpret_cast<char*>(&track_points_count_)) + sizeof(track_dis_));
}

Track::~Track() {
  // @@protoc_insertion_point(destructor:TrackPoints.Track)
  SharedDtor();
}

void Track::SharedDtor() {
  coord_type_.DestroyNoArena(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited());
}

void Track::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const Track& Track::default_instance() {
  ::PROTOBUF_NAMESPACE_ID::internal::InitSCC(&::scc_info_Track_TrackPoints_2eproto.base);
  return *internal_default_instance();
}


void Track::Clear() {
// @@protoc_insertion_point(message_clear_start:TrackPoints.Track)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  pt_.Clear();
  coord_type_.ClearToEmptyNoArena(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited());
  ::memset(&track_points_count_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&track_dis_) -
      reinterpret_cast<char*>(&track_points_count_)) + sizeof(track_dis_));
  _internal_metadata_.Clear();
}

const char* Track::_InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  while (!ctx->Done(&ptr)) {
    ::PROTOBUF_NAMESPACE_ID::uint32 tag;
    ptr = ::PROTOBUF_NAMESPACE_ID::internal::ReadTag(ptr, &tag);
    CHK_(ptr);
    switch (tag >> 3) {
      // string coord_type = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 10)) {
          ptr = ::PROTOBUF_NAMESPACE_ID::internal::InlineGreedyStringParserUTF8(_internal_mutable_coord_type(), ptr, ctx, "TrackPoints.Track.coord_type");
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // int32 track_points_count = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 16)) {
          track_points_count_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // float track_dis = 3;
      case 3:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 29)) {
          track_dis_ = ::PROTOBUF_NAMESPACE_ID::internal::UnalignedLoad<float>(ptr);
          ptr += sizeof(float);
        } else goto handle_unusual;
        continue;
      // repeated .TrackPoints.Point pt = 4;
      case 4:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 34)) {
          ptr -= 1;
          do {
            ptr += 1;
            ptr = ctx->ParseMessage(_internal_add_pt(), ptr);
            CHK_(ptr);
            if (!ctx->DataAvailable(ptr)) break;
          } while (::PROTOBUF_NAMESPACE_ID::internal::ExpectTag<34>(ptr));
        } else goto handle_unusual;
        continue;
      default: {
      handle_unusual:
        if ((tag & 7) == 4 || tag == 0) {
          ctx->SetLastTag(tag);
          goto success;
        }
        ptr = UnknownFieldParse(tag, &_internal_metadata_, ptr, ctx);
        CHK_(ptr != nullptr);
        continue;
      }
    }  // switch
  }  // while
success:
  return ptr;
failure:
  ptr = nullptr;
  goto success;
#undef CHK_
}

::PROTOBUF_NAMESPACE_ID::uint8* Track::InternalSerializeWithCachedSizesToArray(
    ::PROTOBUF_NAMESPACE_ID::uint8* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:TrackPoints.Track)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // string coord_type = 1;
  if (this->coord_type().size() > 0) {
    ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::VerifyUtf8String(
      this->_internal_coord_type().data(), static_cast<int>(this->_internal_coord_type().length()),
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::SERIALIZE,
      "TrackPoints.Track.coord_type");
    target = stream->WriteStringMaybeAliased(
        1, this->_internal_coord_type(), target);
  }

  // int32 track_points_count = 2;
  if (this->track_points_count() != 0) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteInt32ToArray(2, this->_internal_track_points_count(), target);
  }

  // float track_dis = 3;
  if (!(this->track_dis() <= 0 && this->track_dis() >= 0)) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteFloatToArray(3, this->_internal_track_dis(), target);
  }

  // repeated .TrackPoints.Point pt = 4;
  for (unsigned int i = 0,
      n = static_cast<unsigned int>(this->_internal_pt_size()); i < n; i++) {
    stream->EnsureSpace(&target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::
      InternalWriteMessageToArray(4, this->_internal_pt(i), target, stream);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields(), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:TrackPoints.Track)
  return target;
}

size_t Track::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:TrackPoints.Track)
  size_t total_size = 0;

  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // repeated .TrackPoints.Point pt = 4;
  total_size += 1UL * this->_internal_pt_size();
  for (const auto& msg : this->pt_) {
    total_size +=
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::MessageSize(msg);
  }

  // string coord_type = 1;
  if (this->coord_type().size() > 0) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_coord_type());
  }

  // int32 track_points_count = 2;
  if (this->track_points_count() != 0) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::Int32Size(
        this->_internal_track_points_count());
  }

  // float track_dis = 3;
  if (!(this->track_dis() <= 0 && this->track_dis() >= 0)) {
    total_size += 1 + 4;
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    return ::PROTOBUF_NAMESPACE_ID::internal::ComputeUnknownFieldsSize(
        _internal_metadata_, total_size, &_cached_size_);
  }
  int cached_size = ::PROTOBUF_NAMESPACE_ID::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void Track::MergeFrom(const ::PROTOBUF_NAMESPACE_ID::Message& from) {
// @@protoc_insertion_point(generalized_merge_from_start:TrackPoints.Track)
  GOOGLE_DCHECK_NE(&from, this);
  const Track* source =
      ::PROTOBUF_NAMESPACE_ID::DynamicCastToGenerated<Track>(
          &from);
  if (source == nullptr) {
  // @@protoc_insertion_point(generalized_merge_from_cast_fail:TrackPoints.Track)
    ::PROTOBUF_NAMESPACE_ID::internal::ReflectionOps::Merge(from, this);
  } else {
  // @@protoc_insertion_point(generalized_merge_from_cast_success:TrackPoints.Track)
    MergeFrom(*source);
  }
}

void Track::MergeFrom(const Track& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:TrackPoints.Track)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  pt_.MergeFrom(from.pt_);
  if (from.coord_type().size() > 0) {

    coord_type_.AssignWithDefault(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited(), from.coord_type_);
  }
  if (from.track_points_count() != 0) {
    _internal_set_track_points_count(from._internal_track_points_count());
  }
  if (!(from.track_dis() <= 0 && from.track_dis() >= 0)) {
    _internal_set_track_dis(from._internal_track_dis());
  }
}

void Track::CopyFrom(const ::PROTOBUF_NAMESPACE_ID::Message& from) {
// @@protoc_insertion_point(generalized_copy_from_start:TrackPoints.Track)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void Track::CopyFrom(const Track& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:TrackPoints.Track)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool Track::IsInitialized() const {
  return true;
}

void Track::InternalSwap(Track* other) {
  using std::swap;
  _internal_metadata_.Swap(&other->_internal_metadata_);
  pt_.InternalSwap(&other->pt_);
  coord_type_.Swap(&other->coord_type_, &::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited(),
    GetArenaNoVirtual());
  swap(track_points_count_, other->track_points_count_);
  swap(track_dis_, other->track_dis_);
}

::PROTOBUF_NAMESPACE_ID::Metadata Track::GetMetadata() const {
  return GetMetadataStatic();
}


// @@protoc_insertion_point(namespace_scope)
}  // namespace TrackPoints
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::TrackPoints::Point* Arena::CreateMaybeMessage< ::TrackPoints::Point >(Arena* arena) {
  return Arena::CreateInternal< ::TrackPoints::Point >(arena);
}
template<> PROTOBUF_NOINLINE ::TrackPoints::Track* Arena::CreateMaybeMessage< ::TrackPoints::Track >(Arena* arena) {
  return Arena::CreateInternal< ::TrackPoints::Track >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>
