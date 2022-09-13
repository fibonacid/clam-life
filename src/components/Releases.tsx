import Release, { Props as ReleaseProps } from "./Release";

export type Props = {
  releases: ReleaseProps[];
};

export default function Releases({ releases }: Props) {
  return (
    <ul class="releases__list">
      {releases.map((release) => (
        <li class="releases__item">
          <Release {...release} />
        </li>
      ))}
    </ul>
  );
}
